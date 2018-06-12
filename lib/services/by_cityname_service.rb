require 'httparty'
require 'json'

class ByCityName
  include HTTParty


  base_uri "api.openweathermap.org/data/2.5/weather?APPID=75dc18cfc372a10411d0acc2f7246eb7"

  def get_weather_by_city_name(city)
    @single_postcode_data =
    JSON.parse(self.class.get("&q=#{city}").body)
  end

end

call = ByCityName.new
p call.get_weather_by_city_name('london')
