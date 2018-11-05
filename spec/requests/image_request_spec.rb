require 'rails_helper'
describe 'image endpoint' do
  it 'returns background image' do
    get '/api/v1/backgrounds?location=denver,co'
    expect(response.status).to eq(200)
  end
end
