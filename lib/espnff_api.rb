require "espnff_api/railtie"

module EspnffApi
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :espn, :swid

    def initialize
      @espn = 'abc'
      @swid = 'def'
    end
  end
end