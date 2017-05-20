defmodule Agitate.EfficiencyGapTransformerTest do
  use Agitate.TransformerCase

  alias Agitate.EfficiencyGapTransformer
  @csv "priv/data/election-results/2014-house.csv"
  @party_rows [
      [ district: "1", party: "R", general_votes: 103758 ],
      [ district: "1", party: "D", general_votes: 48278  ],
      [ district: "1", party: "W", general_votes: 198    ],

      [ district: "2", party: "R", general_votes: 113103 ],
      [ district: "2", party: "D", general_votes: 54692  ],
      [ district: "2", party: "W", general_votes: 157    ]
  ]

  test "party gap" do
    gap = EfficiencyGapTransformer.party_gap 100, 53
    assert gap == 2
    gap = EfficiencyGapTransformer.party_gap 100, 49
    assert gap == 49
  end

  test "district gap" do
    expected = [
      %{ district: "1", total: 152234, votes: %{ "W" => 198, "D" => 48278, "R" => 26118 } },
      %{ district: "2", total: 167952, votes: %{ "W" => 157, "D" => 54692, "R" => 27447 } }
    ]

    assert expected == EfficiencyGapTransformer.district_gap(@party_rows)
  end

  test "state gap" do
    result   = EfficiencyGapTransformer.state_gap @party_rows
    expected = %{
      "R" => 53565,
      "D" => 102970,
      "W" => 355
    }
    assert expected == result
  end

  test "country" do
    alabama = Enum.map @party_rows, fn row -> [ {:state, "Alabama"} | row ] end
    georgia = Enum.map @party_rows, fn row -> [ {:state, "Georgia"} | row ] end

    result  = EfficiencyGapTransformer.country alabama ++ georgia

    assert result["Alabama"] == Enum.reverse(@party_rows)
    assert result["Georgia"] == Enum.reverse(@party_rows)
  end

  test "parse doc" do
    first_row = EfficiencyGapTransformer.csv_to_stream(@csv)
    |> Stream.take(1)
    |> Enum.to_list
    |> List.first

    assert [
      state: "Alabama",
      district: "01",
      party: "R",
      general_votes: 103758
    ] == first_row
  end

  test "csv to sql" do
    rows = EfficiencyGapTransformer.csv_to_sql @csv
    assert length(Map.keys(rows)) == 55
  end
end
