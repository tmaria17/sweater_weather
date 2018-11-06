require 'rails_helper'

describe BackgroundImageService do
  it 'exists' do
    service = BackgroundImageService.new
    # service.get_image(39.708285, -104.8714487)
    binding.pry
    expect(service).to be_a(BackgroundImageService)
  end
  xit 'gets an image' do
    service = BackgroundImageService.new

    service.get_image(39.708285, -104.8714487)
    # expect(service.get_image(39.708285, -104.8714487)).to be
  end
end
