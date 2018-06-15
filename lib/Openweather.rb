require_relative 'services/by_cityname_service'
require_relative 'services/random_city_generator'
require_relative 'services/multiple_city_service'



class Weatherio

  def city_name_service
    ByCityName.new
  end
  def get_random_city
    RandomCity.new
  end
  def multiple_city_service(city_arr)
    MultipleCityWeather.new(city_arr)
  end

end
