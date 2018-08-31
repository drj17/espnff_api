WIP gem for accessing the espn fantasy api


## Installation
    gem install espnff_api

## Setup
Run the generator 

    rails generate espnff_api

Navigate to initializors/espnff_api.rb and plug in your espn cookies

    EspnffApi.configure do |config|
      config.espn_s2 = 'your_key_here'
      config.swid = 'your_key_here'
    end





# Usage Examples
    league = EspnffApi::League.fetch(league_id)