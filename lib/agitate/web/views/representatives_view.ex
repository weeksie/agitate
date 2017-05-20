defmodule Agitate.Web.RepresentativesView do
  use Agitate.Web, :view

  def shallow_json(representative) do
    representative
    |> Map.take([ :id, :name, :phone, :party, :facebook, :twitter, :wikipedia,
                :url, :term_count, :up_for_reelection, :years_in_office ])
  end
end
