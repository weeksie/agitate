defmodule Agitate.EfficiencyGapTransformer do

  def party_gap(total_votes, party_votes) do
    party_percent  = party_votes / total_votes
    wasted_percent = if party_percent >= 0.51 do
      party_percent - 0.51
    else
      party_percent
    end
    Float.floor wasted_percent * total_votes
  end

  def district_gap(party_rows) do
    district_rows = Enum.reduce party_rows, [ ], &district_reducer/2
    Enum.reduce district_rows, [ ], &gap_reducer/2
  end

  def state_gap(party_rows) do
    Enum.reduce district_gap(party_rows), %{}, &state_reducer/2
  end

  def country(state_rows) do
    Map.new Enum.reduce(state_rows, [], &country_reducer/2)
  end

  def csv_to_stream(csv) do
    csv
    |> File.stream!
    |> CSV.decode(headers: true)
    |> update_headers
  end

  def csv_to_sql(csv) do
    csv
    |> csv_to_stream()
    |> Enum.to_list()
    |> country()
    # |> Enum.reduce([ ], fn row, acc ->
    #   row
    # end)

  end

  ################################################################################
  defp update_headers(stream) do
    Stream.filter_map stream, &header_filter/1,
    # NB: The key for "GENERAL VOTES " <- has a trailing space
    fn %{ "STATE" => state, "D" => district,
          "PARTY" => party, "GENERAL VOTES "=> general_votes } ->
      [
        state: state,
        district: district,
        party: party,
        general_votes: general_votes |> String.replace(",","") |> String.to_integer
      ]
    end
  end

  defp header_filter(%{ "GENERAL VOTES " => ""}), do: false
  defp header_filter(%{ "GENERAL VOTES " => "#"}), do: false
  defp header_filter(%{ "GENERAL VOTES " => "Unopposed"}), do: false
  defp header_filter(%{ "PARTY" => "" }), do: false
  defp header_filter(_else), do: true


  defp country_reducer(row, []) do
    district_row      = List.keydelete row, :state, 0
    { :state, state } = List.keyfind row, :state, 0

    [ { state, [ district_row ] } ]
  end

  defp country_reducer(row, [ { current_state, rows } | t ]) do
    district_row      = List.keydelete row, :state, 0
    { :state, state } = List.keyfind row, :state, 0

    if(state != current_state) do
      [ { state, [ district_row ] } | [ { current_state, rows } | t ] ]
    else
      [ { state, [ district_row | rows ] } | t ]
    end
  end

  defp state_reducer(%{ votes: votes }, acc) do
    Enum.reduce votes, acc, fn { party, total }, subtotals ->
      previous_wasted = Map.get subtotals, party, 0
      Map.put subtotals, party, previous_wasted + total
    end
  end

  defp gap_reducer(row, acc) do
    total_votes = Enum.reduce row.votes, 0, fn { _party, votes }, total ->
      votes + total
    end

    gaps        = Enum.map row.votes, fn { party, votes } ->
      { party, party_gap(total_votes, votes) }
    end

    [ %{ district: row.district, total: total_votes, votes: Map.new(gaps) } | acc ]
  end

  defp district_reducer([ district: district, party: party, general_votes: votes ], []) do
    [ mk_dist(district, party, votes) ]
  end
  defp district_reducer([ district: district, party: party, general_votes: votes ], [ h | t ]) do
    if h.district != district do
      [ mk_dist(district, party, votes) | [ h | t ] ]
    else
      [ %{ district: district, votes: Map.put(h.votes, party, votes) } | t ]
    end
  end

  defp mk_dist(district, party, votes) do
    %{ district: district, total: votes, votes: %{ party => votes } }
  end

end
