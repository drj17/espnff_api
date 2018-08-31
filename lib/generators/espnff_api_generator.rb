class EspnffApiGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))
  def copy_initializer
    copy_file 'espnff_api_credentials.rb', 'config/initializers/espnff_api.rb'
  end
end