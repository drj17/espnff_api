class EspnffApi::Standings
  def self.fetch(league_id)
    EspnffApi::fetch("standings", league_id)
  end
end