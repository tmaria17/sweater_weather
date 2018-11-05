require 'rails_helper'

describe 'Get location' do
  it 'returns coordinates' do
    get '/api/v1/forecast?location=denver,co'
    expect(response.status).to eq(200)
  end
  it 'returns weather' do
    service = WeatherService.new({"lat": 39.708285, "lng": -104.8714487})
    expect(service.get_weather[:currently][:summary]).to eq("Mostly Cloudy")
  end
end
