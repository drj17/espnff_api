class EspnffApi::League
  def self.fetch(league_id)
    EspnffApi::fetch("leagueSettings", league_id)
  end
end