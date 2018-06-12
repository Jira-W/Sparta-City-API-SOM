require_relative 'services/by_cityname_service'


class Weatherio

  def city_name_service
    ByCityName.new
  end

end
