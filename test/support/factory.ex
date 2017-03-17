defmodule Agitate.Factory do
  use ExMachina.Ecto, repo: Agitate.Repo

  alias Comeonin.Bcrypt
  
  alias Agitate.State
  alias Agitate.District
  alias Agitate.Representative
  alias Agitate.ZipCode
  alias Agitate.User
  alias Agitate.Application
  
  def state_factory do
    %State{
      short: "AK",
      name: "Alaska",
      # districts: [ build(:district) ]
    }
  end

  def district_factory do
    %District{
      name: sequence(:district_name, &"#{&1}"),

      convex_hull: 0.5,
      polsby_popper: 0.2,
      schwartzberg: 0.2,
      
      efficiency_gap_d: 0.3,
      efficiency_gap_r: 0.1,

      state: build(:state),
      representative: build(:representative),
      zip_codes: [ build(:zip_code) ],
      
      lat: 40.8367285,
      lon: -73.9437717701674,
      geom: Geo.WKB.decode("010600000001000000010300000001000000140000002976340EF57D52C0E2E995B20C69444023861DC6A47D52C0FD87F4DBD769444040BE840A0E7D52C0068195438B6C4440C39ACAA2B07C52C0A5F5B704E06D4440EFFFE384097C52C0056C0723F66F44402CB695F4BC7B52C0534F1BD5E7704440265305A3927A52C0DEFFC7091370444031CEDF84427A52C0CE52B29C8470444076A4FACE2F7852C0334FAE29907144406F29E78BBD7752C08F16670C737044403332C85D847852C0A4F8F884EC6E4440E8BB5B59A27A52C0CEA5B8AAEC6D44408B6D52D1587B52C09599D2FA5B6C44406BD102B4AD7B52C0B47405DB886744401895D409687B52C0DE718A8EE4664440FC170802647C52C0711B0DE02D644440EEEBC039237D52C00E130D52F0644440F0129CFA407D52C0649291B3B067444022D48B97287E52C0811624827D6844402976340EF57D52C0E2E995B20C694440")
    }
  end

  def representative_factory do
    %Representative{
      name: "Hagbard Celine",
      phone: "(202) 555-5555",
      party: "D",
      facebook: "cagliostro.the.great",
      twitter: "skidoo",
      wikipedia: "Hagbard Celine (Adventurer)",
      url: "https://emanentizetheeschaton.org",
      term_count: 99,
      up_for_reelection: "2020-01-09",
      years_in_office: 197
    }
  end

  def zip_code_factory do
    %ZipCode{
      code: "10013",
      lat: 74.004903,
      lon: 40.720103,
      # districts: [ build(:district) ]
    }
  end

  def user_factory do
    %User{
      email: sequence(:user_email, &"hagbard#{&1}@example.com"),
      password: "filthytoast",
      password_hash: Bcrypt.hashpwsalt("filthytoast"),
      applications: [ build(:application) ]
    }
  end

  def application_factory do
    %Application{
      name: "Ratfucker",
      token: "ABCDE"
    }
  end
end
