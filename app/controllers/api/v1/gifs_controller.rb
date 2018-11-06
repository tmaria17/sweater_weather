class Api::V1::GifsController < ApplicationController
  def index
    # coordinate_service = CoordinateService.new(params[:location])
    # weather_service = WeatherService.new(coordinate_service.get_coordinates)
    forecast = ForecastFacade.new(params[:location])
    # gif_service = GifService.new(weather_service.get_weather[:currently][:summary])
      gif_service = GifService.new(forecast.current_summary)
    render json: gif_service.get_gifs
  end

end
