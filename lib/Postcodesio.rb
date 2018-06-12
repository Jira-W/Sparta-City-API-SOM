require_relative 'services/by_city_name'


class Weatherio

  def city_name_service
    SinglePostcodeService.new
  end

end
