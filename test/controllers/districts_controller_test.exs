defmodule Agitate.DistrictsControllerTest do
  use Agitate.ConnCase
  
  alias Agitate.District
  alias Agitate.Endpoint
  alias Agitate.DistrictsView

  test "GET /districts", %{ conn: conn } do
    conn = get conn, districts_path(Endpoint, :index)
    assert json_response(conn, 200) == %{
      "__actions" => district_actions()
    }
  end
  
  test "GET /districts?zip_code=XXXXX", %{ conn: conn } do
    district = insert :district
    [ zip ]  = district.zip_codes
    
    path     = districts_path Endpoint, :index, zip_code: zip.code
    conn     = get conn, path
    
    assert json_response(conn, 200) == %{
      "districts" => [ district_json(district) ]
    }
  end

  test "GET /districts?lat=XX.XXX&lon=XX.XXX", %{ conn: conn } do
    district = insert :district
    path     = districts_path Endpoint, :index, lat: to_string(district.lat), lon: to_string(district.lon)
    conn     = get conn, path
    assert json_response(conn, 200) == district_json(district)
  end
  
  def district_json(district = %{ state: state, representative: rep }) do
    %{
      "id" => district.id,
      "name" => district.name,
      "geom" => DistrictsView.geom_to_json(district.geom),
      "score" => District.score(district),
      "lat" => district.lat,
      "lon" => district.lon,
      "state" => %{
        "id" => state.id,
        "short" => state.short,
        "name" => state.name
      },
      "representative" => %{
        "id" => rep.id,
        "name" => rep.name,
        "phone" => rep.phone,
        "party" => rep.party,
        "facebook" => rep.facebook,
        "twitter" => rep.twitter,
        "wikipedia" => rep.wikipedia,
        "url" => rep.url,
        "term_count" => rep.term_count,
        "up_for_reelection" => rep.up_for_reelection,
        "years_in_office" => rep.years_in_office
      }
    }    
  end
  
  def district_actions() do
    %{
      "by_zip_code" => URI.decode(districts_url(Endpoint, :index, zip_code: "${zip_code}")),
      "by_coords" => URI.decode(districts_url(Endpoint, :index, lat: "${lat}", lon: "${lon}"))
    }
  end
end
