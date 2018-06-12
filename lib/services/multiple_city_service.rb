require 'httparty'
require 'json'


class MultipleCityWeather

  include HTTParty

  attr_accessor :city_arr

  def initialize(city_arr)
    file = File.read('./lib/yml/city.list.json')
    @city_arr = city_arr
    @city_name = JSON.parse(file)
  end

  base_uri "http://api.openweathermap.org/data/2.5"

  def get_multiple_city_id
    @city_id_arr = []
    city_id_1 = @city_name.find {|i| i["name"] == city_arr[0]}
    city_id_2 = @city_name.find {|i| i["name"] == city_arr[1]}
    @city_id_arr.push(city_id_1['id'], city_id_2['id'])
    p @city_id_arr
  end
  #
  #
  def get_multiple_city_weather
    p @multiple_city_weather =
    JSON.parse(self.class.get("/group?id=#{@city_id_string}&APPID=75dc18cfc372a10411d0acc2f7246eb7").body)
  end
  def get_city_id_to_string
  p @city_id_string = @city_id_arr.join(",")
  end

  # def get_weather_result
  #   @city_name_weather
  # end
  # def get_city_id
  #   @city_name_weather['id']
  # end
  # def get_city_coord_longitude
  #   @city_name_weather['coord']['lon']
  # end
  # def get_city_coord_latitude
  #   @city_name_weather['coord']['lat']
  # end
  # def get_city_coord_weather
  #   @city_name_weather['coord']['lat']
  # end
  # def get_city_weather_main
  #   @city_name_weather['weather'][0]['main']
  # end
  # def get_city_weather_description
  #   @city_name_weather['weather'][0]['description']
  # end
  # def get_city_weather_temp
  #   @city_name_weather['main']['temp']
  # end
  # def get_city_weather_temp_min
  #   @city_name_weather['main']['temp_min']
  # end
  # def get_city_weather_temp_max
  #   @city_name_weather['main']['temp_max']
  # end
  # def get_city_weather_humidity
  #   @city_name_weather['main']['humidity']
  # end
  # def get_city_weather_pressure
  #   @city_name_weather['main']['pressure']
  # end
  # def get_city_weather_visibility
  #   @city_name_weather['visibility']
  # end
  # def get_city_weather_wind_speed
  #   @city_name_weather['wind']['speed']
  # end
  # def get_city_weather_wind_degree
  #   @city_name_weather['wind']['deg']
  # end
  # def get_city_weather_clouds
  #   @city_name_weather['clouds']['all']
  # end
  # def get_city_weather_country_code
  #   @city_name_weather['sys']['country']
  # end
  # def get_city_weather_sunrise
  #   @city_name_weather['sys']['sunrise']
  # end
  # def get_city_weather_sunset
  #   @city_name_weather['sys']['sunset']
  # end
  # def get_city_weather_name
  #   @city_name_weather['name']
  # end
  # def get_city_unix_time
  #   @city_name_weather['dt']
  # end

end
call = MultipleCityWeather.new(['London','Paris',])
call.get_multiple_city_id
call.get_city_id_to_string
call.get_multiple_city_weather
