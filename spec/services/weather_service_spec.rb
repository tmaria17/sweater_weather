require 'rails_helper'

describe WeatherService do
  it 'exists' do
    service = WeatherService.new({"lat": 39.708285, "lng": -104.8714487})
    expect(service).to be_a(WeatherService)
  end

  it 'returns weather' do
    service = WeatherService.new({"lat": 39.708285, "lng": -104.8714487})
    expect(service.get_weather[:currently][:summary]).to eq("Mostly Cloudy")
  end
end
