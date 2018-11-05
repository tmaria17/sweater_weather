class Api::V1::ForecastsController < ApplicationController
  def show
    coordinate_service = CoordinateService.new(params[:location])
    weather_service = WeatherService.new(coordinate_service.get_coordinates)

    render json: weather_service.get_weather
  end
end
