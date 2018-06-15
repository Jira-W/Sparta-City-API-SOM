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
    x = 0
    while x < city_arr.length
      city_id = @city_name.find {|i| i["name"] == city_arr[x]}
      @city_id_arr.push city_id['id']
      x+=1
    end
    @city_id_arr
  end

  def get_city_id_to_string
    @city_id_string = @city_id_arr.join(",")
  end

  def get_multiple_city_weather
    get_multiple_city_id
    get_city_id_to_string
    @multiple_city_weather =
    JSON.parse(self.class.get("/group?id=#{@city_id_string}&APPID=75dc18cfc372a10411d0acc2f7246eb7").body)
  end
  
  def get_multiple_city_count
      @multiple_city_weather['cnt']
  end

end
