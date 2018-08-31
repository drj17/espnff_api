require "espnff_api/railtie"
require 'rest-client'

module EspnffApi
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  def self.fetch(endpoint, league_id)
    res = RestClient::Request.execute( 
      method: 'get',
      url: "http://games.espn.com/ffl/api/v2/#{endpoint}", 
      cookies: {espn_s2: EspnffApi.configuration.espn_s2, SWID: EspnffApi.configuration.swid},
      headers: {
        params: {
          "leagueId": league_id,
          "seasonId": 2018,
        }
      }
    )
    res
  end

  class Configuration
    attr_accessor :espn_s2, :swid

    def initialize
      @espn_s2 = 'abc'
      @swid= 'def'
    end
  end

end

