class Api::V1::BackgroundsController < ApplicationController

  def index
    coordinate_service = CoordinateService.new(params[:location]).get_coordinates
    background_image = BackgroundImageService.new
    image = background_image.get_images(coordinate_service[:lat],coordinate_service[:lng])
    # binding.pry
  end

end
