require 'rails_helper'

describe BackgroundImageService do
  it 'exists' do
    service = BackgroundImageService.new
    expect(service).to be_a(BackgroundImageService)
  end
  it 'gets images' do
    service = BackgroundImageService.new.get_images(39.7392358,-104.990251)
    # binding.pry
    expect(service).to be_a(Hash)
    expect(service).to have_key(:photos)
    expect(service[:photos]).to have_key(:photo)
  end
end
