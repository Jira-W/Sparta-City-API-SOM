require 'httparty'
require 'json'

class ByCityName
  include HTTParty


  base_uri "api.openweathermap.org/data/2.5/weather?APPID=75dc18cfc372a10411d0acc2f7246eb7"

  def get_weather_by_city_name(city)
    @city_name_weather =
    JSON.parse(self.class.get("&q=#{city}").body)
  end

  def get_city_id
    @city_name_weather['weather'][0]['id']
  end
  def get_city_coord_longitude
    @city_name_weather['coord']['lon']
  end
  def get_city_coord_latitude
    @city_name_weather['coord']['lat']
  end

end

call = ByCityName.new
call.get_weather_by_city_name('london')
p call.get_city_id
