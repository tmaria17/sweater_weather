class Api::V1::GifsController < ApplicationController
  def index
    coordinate_service = CoordinateService.new(params[:location])
    weather_service = WeatherService.new(coordinate_service.get_coordinates)
    gif_service = GifService.new(weather_service.get_weather[:currently][:summary])
    render json: gif_service.get_gifs
  end

end
