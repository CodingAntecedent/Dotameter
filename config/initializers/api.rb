class SteamAPI
  def self.get_response(uri)
    HTTParty.get(uri)
  end

  def self.base_uri
    "http://api.steampowered.com/"
  end

  def self.version
    "/v1"
  end

  def self.api_key
    "/?key=" + ENV["STEAM_API_KEY"]
  end
end

class DotaAPI < SteamAPI
  def self.dota_base_uri
    DotaAPI.base_uri + "IDOTA2Match_570/"
  end

  def self.dota_econ_base_uri
    DotaAPI.base_uri + "IEconDOTA2_570/"
  end

  def self.get_heroes
    uri = DotaAPI.dota_econ_base_uri + "GetHeroes" + DotaAPI.version + DotaAPI.api_key
    DotaAPI.get_response(uri)
  end

  def self.get_match_history
    uri = DotaAPI.dota_base_uri + "GetMatchHistory" + DotaAPI.version + DotaAPI.api_key
    DotaAPI.get_response(uri)
  end
end

class UserAPI < SteamAPI
end