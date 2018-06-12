require_relative 'services/by_cityname_service'
require_relative 'services/random_city_generator'


class Weatherio

  def city_name_service
    ByCityName.new
  end
  def get_random_city
    RandomCity.new
  end

end
