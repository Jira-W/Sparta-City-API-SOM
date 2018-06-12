require 'httparty'
require 'json'

class ByCityName
  include HTTParty


  base_uri "api.openweathermap.org/data/2.5/weather?APPID=75dc18cfc372a10411d0acc2f7246eb7"

  def get_weather_by_city_name(city)
    @city_name_weather =
    JSON.parse(self.class.get(URI.encode("&q=#{city}")).body)
  end

  def get_weather_result
    @city_name_weather
  end
  def get_city_id
    @city_name_weather['id']
  end
  def get_city_name
    @city_name_weather['name']
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
  def get_city_base
    @city_name_weather['base']
  end
  def get_city_weather_temp
    @city_name_weather['main']['temp']
  end
  def get_city_weather_temp_min
    @city_name_weather['main']['temp_min']
  end
  def get_city_weather_temp_max
    @city_name_weather['main']['temp_max']
  end
  def get_city_weather_humidity
    @city_name_weather['main']['humidity']
  end
  def get_city_weather_pressure
    @city_name_weather['main']['pressure']
  end
  def get_city_weather_visibility
    @city_name_weather['visibility']
  end
  def get_city_weather_wind_speed
    @city_name_weather['wind']['speed']
  end
  def get_city_weather_wind_degree
    @city_name_weather['wind']['deg']
  end
  def get_city_weather_clouds
    @city_name_weather['clouds']['all']
  end
  def get_city_weather_country_code
    @city_name_weather['sys']['country']
  end
  def get_city_weather_sunrise
    @city_name_weather['sys']['sunrise']
  end
  def get_city_weather_sunset
    @city_name_weather['sys']['sunset']
  end
  def get_city_weather_name
    @city_name_weather['name']
  end
  def get_city_unix_time
    @city_name_weather['dt']
  end

end
# call = ByCityName.new
# call.get_weather_by_city_name('london')
