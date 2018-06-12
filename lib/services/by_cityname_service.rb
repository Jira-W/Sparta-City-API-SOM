require 'httparty'
require 'json'

class ByCityName
  include HTTParty

  base_uri 'https://api.openweathermap.org/data/2.5/'

  def get_weather_by_city_name(city)
    @single_postcode_data =
    JSON.parse(self.class.get("/weather?q=#{city}").body)
  end

end

# call = SinglePostcodeService.new
# call.get_single_postcode('w93pt')
# call.get_postcode
