class Api::V1::GifsController < ApplicationController
  def index
    forecast = ForecastFacade.new(params[:location])

    gifs = forecast.weather[:daily][:data].map do |stuff|
      GifService.new(stuff[:summary]).get_gifs
    end
      
    render json: gifs
    # binding.pry
    #gifs[0][:data][0][:url]
  end
end
