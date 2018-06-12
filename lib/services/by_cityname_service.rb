require 'httparty'
require 'json'

class ByCityName
  include HTTParty


  base_uri "api.openweathermap.org/data/2.5/weather?APPID=75dc18cfc372a10411d0acc2f7246eb7"

  def get_weather_by_city_name(city)
    @city_name_weather =
    JSON.parse(self.class.get("&q=#{city}").body)
  end

  def get_weather_result
    @city_name_weather
  end
  def get_city_id
    @city_name_weather['id']
  end
  def get_city_coord_longitude
    @city_name_weather['coord']['lon']
  end
  def get_city_coord_latitude
    @city_name_weather['coord']['lat']
  end
  def get_city_coord_weather
    @city_name_weather['coord']['lat']
  end
  def get_city_weather_main
    @city_name_weather['weather'][0]['main']
  end
  def get_city_weather_description
    @city_name_weather['weather'][0]['description']
  end
  def get_city_weather_description
    @city_name_weather['weather'][0]['description']
  end

end

call = ByCityName.new
call.get_weather_by_city_name('london')
p call.get_city_id
