class Api::V1::GifsController < ApplicationController
  def index
    # coordinate_service = CoordinateService.new(params[:location])
    # weather_service = WeatherService.new(coordinate_service.get_coordinates)
    # binding.pry
   #  summaries = forecast.weather.map do |data|
   #   data[:currently][:summary]
   # end
    # gif_service = GifService.new(weather_service.get_weather[daily][:summary])
    forecast = ForecastFacade.new(params[:location])

    gifs = forecast.weather[:daily][:data].map do |stuff|
      GifService.new(stuff[:summary]).get_gifs
    end
 # ^ this grabs all the daily summaries
# binding.pry
    # gifs =  searches.map do |search|
    #           GifService.new(search).get_gifs
    #         end
    render json: gifs
    # binding.pry
    # gif_service.get_gifs
    # binding.pry
  end
end
