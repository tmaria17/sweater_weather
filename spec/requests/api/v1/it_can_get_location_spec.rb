require 'rails_helper'

describe 'Get location' do
  it 'returns coordinates' do
    get '/api/v1/forecast?location=denver,co'
    expect(response.status).to eq(200)
  end
  it 'returns weather' do
    json_response = File.open("./fixtures/forecast_response.json")
    stub_request(:get, "https://api.darksky.net/forecast/#{ENV['dark_sky_key']}/39.708285,-104.8714487")
    .to_return(status: 200, body: json_response)
    service = WeatherService.new({"lat": 39.708285, "lng": -104.8714487})
    expect(service.get_weather[:currently][:summary]).to eq("Mostly Cloudy")
  end
end
