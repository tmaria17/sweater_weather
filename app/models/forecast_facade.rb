class ForecastFacade
  def initialize(location)
    @location = location
  end

  def weather
    weather_service.get_weather
  end

  def daily_summaries
    weather[:daily][:data].map do |stuff|
      stuff[:summary]
    end
  end
  
  def current_weather
    weather_service.get_weather[:currently]
  end

  def current_summary
    current_weather[:summary]
  end

  def current_temp
    current_weather[:temperature]
  end

  def daily_weather
    weather_service.get_weather[:daily][:data]
  end

  def daily_high
    daily_weather[0][:temperatureHigh]
  end

  def daily_low
    daily_weather[0][:temperatureLow]
  end

  private

  def coordinate_service
    CoordinateService.new(@location)
  end

  def weather_service
    WeatherService.new(coordinate_service.get_coordinates)
  end

end
