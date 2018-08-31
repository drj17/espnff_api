class EspnffApi::Roster
  def self.fetch(league_id)
    EspnffApi::fetch("rosterInfo", league_id)
  end
end
