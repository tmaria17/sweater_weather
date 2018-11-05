class Api::V1::ForecastsController < ApplicationController
  def show
    # coordinate_service = CoordinateService.new(params[:location])
    # weather_service = WeatherService.new(coordinate_service.get_coordinates)
    forecast = ForecastFacade.new(params[:location])
    render json: forecast.weather

  end
end
