require 'spec_helper'

describe Weatherio do

  context 'requesting weather by city name works correctly' do

    before(:all) do
      @city_weather = Weatherio.new.city_name_service
      @city_name = Weatherio.new.get_random_city.get_random_city_name
      @city_weather.get_weather_by_city_name(@city_name)
    end
    it "should respond a co-ordinate as a float" do
      expect(@city_weather.get_city_coord_longitude).to be_kind_of(Float)
      expect(@city_weather.get_city_coord_latitude).to be_kind_of(Float)
    end

    it "should respond with a city inetger" do
      expect(@city_weather.get_city_id).to be_kind_of(Integer)
    end

    it "should have a results hash" do
      expect(@city_weather.get_weather_result).to be_kind_of(Hash)
    end
    it "should return a weather forcast as string"  do
      expect(@city_weather.get_city_weather_main).to be_kind_of(String)
      expect(@city_weather.get_city_weather_description).to be_kind_of(String)
    end
    #
    it "should return a temperature float" do
      expect(@city_weather.get_city_weather_temp).to be_kind_of(Float)
    end
    it "should return a minimum temperature as float" do
      expect(@city_weather.get_city_weather_temp_min).to be_kind_of(Float)
    end
    it "should return a maximum temperature as float" do
      expect(@city_weather.get_city_weather_temp_max).to be_kind_of(Float)
    end
    it "should return a humidity as integer" do
      expect(@city_weather.get_city_weather_humidity).to be_kind_of(Integer)
    end
    it "should return a pressure as integer" do
      expect(@city_weather.get_city_weather_pressure).to be_kind_of(Integer).or be_kind_of(Float)
    end
    #
    it "should return a visibility as integer" do
      expect(@city_weather.get_city_weather_visibility).to be_kind_of(Integer).or be_kind_of(Float).or be nil
    end
    it "should return a wind speed as float or integer" do
      expect(@city_weather.get_city_weather_wind_speed).to be_kind_of(Float).or be_kind_of(Integer)
    end
    it "should return a wind degrees as integer" do
      expect(@city_weather.get_city_weather_wind_degree).to be_kind_of(Integer).or be_kind_of(Float)
    end
    it "should return a clouds as integer" do
      expect(@city_weather.get_city_weather_clouds).to be_kind_of(Integer)
    end
    it "should return a country code as string" do
      expect(@city_weather.get_city_weather_country_code).to be_kind_of(String)
    end
    it "should return a sunrise as integer" do
      expect(@city_weather.get_city_weather_sunrise).to be_kind_of(Integer)
    end
    it "should return a sunset as integer" do
      expect(@city_weather.get_city_weather_sunset).to be_kind_of(Integer)
    end
    it "should return a city name as string" do
      expect(@city_weather.get_city_weather_name).to be_kind_of(String)
    end
    it "should return a Time of data calculation, unix, UTC as Integer" do
      expect(@city_weather.get_city_unix_time).to be_kind_of(Integer)
    end

  end
end
