require 'yaml'
require 'json'

class CityIdYml

  def initialize
    file = File.read('./lib/yml/city.list.json')
    @city_id= YAML.load_file('./lib/yml/city_id.yml')
    @city_name = JSON.parse(file)
  end


end
t = CityIdYml.new
t.print_city_name
