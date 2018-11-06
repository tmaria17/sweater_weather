class GifFacade

def gif_summary
gif_service
end

private

def coordinate_service
  CoordinateService.new(@location)
end

def weather_service
  WeatherService.new(coordinate_service.get_coordinates)
end

def gif_service
  GifService.new(weather_service.get_weather[:currently][:summary])
end

end
