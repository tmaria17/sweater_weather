require 'rails_helper'

describe GifService do
  it 'exists' do
    service = GifService.new("Denver")

    expect(service).to be_a(GifService)
  end

  it 'gets gifs' do
    service = GifService.new("Denver")
    expect(service.get_gifs).to be_a(Hash)
    expect(service.get_gifs).to have_key(:data)

  end
end
