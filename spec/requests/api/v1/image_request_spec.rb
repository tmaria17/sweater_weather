require 'rails_helper'
describe 'image endpoint' do
  xit 'returns background image' do
    get '/api/v1/backgrounds?location=denver,co'
    image = JSON.parse(response.body, symbolize_names: true)
    # binding.pry
    expect(response.status).to eq(200)
    expect(image).to be_a(Hash)
  end
end
