require 'yaml'
require 'json'

class RandomCity

  def initialize
    file = File.read('./lib/yml/city.list.json')
    @city_id= YAML.load_file('./lib/yml/city_id.yml')
    @city_name = JSON.parse(file)
  end

  def get_random_city_id
   @random_city_id =  rand(0..(@city_id.length-1))
   @city_id[@random_city_id]
  end
  def get_random_city_name
    get_random_city_id
    city = @city_name.find {|i| i["id"] == @city_id[@random_city_id]}
    p city['name'].gsub(" ", "")
  end
end
