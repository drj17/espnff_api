class EspnffApi::Scoreboard
  def self.fetch(league_id)
    EspnffApi::fetch("scoreboard", league_id)
  end
end