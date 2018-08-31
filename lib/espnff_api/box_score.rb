class EspnffApi::BoxScore
  def self.fetch(league_id)
    EspnffApi::fetch("boxscore", league_id)
  end
end