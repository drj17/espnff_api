$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "espnff_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "espnff_api"
  s.version     = EspnffApi::VERSION
  s.authors     = ["David Janas"]
  s.email       = ["davidjanasr@gmail.com"]
  s.homepage    = "http://github.com/drj17"
  s.summary     = "Scrapes ESPN fantasy API for stats."
  s.description = "Gem for interacting with espn API"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
  s.add_dependency "rest-client", "~> 2.0"

  s.add_development_dependency "sqlite3"
end
