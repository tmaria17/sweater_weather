require 'rails_helper'
# require 'spec_helper'

describe ForecastFacade do
  before :each do
    json_response = File.open("./fixtures/forecast_response.json")
    stub_request(:get, "https://api.darksky.net/forecast/#{ENV['dark_sky_key']}/39.708285,-104.8714487")
    .to_return(status: 200, body: json_response)
    @forecastfacade = ForecastFacade.new('10000 E Alameda Avenue,  Denver,  CO')

  end
  it 'exists' do
    expect(@forecastfacade).to be_a(ForecastFacade)
  end
  it 'returns current summary' do
    expect(@forecastfacade.current_summary).to eq("Mostly Cloudy")
  end

  it 'returns current_temp' do
    expect(@forecastfacade.current_temp).to eq(50.03)
  end

  it 'returns daily_high' do
    expect(@forecastfacade.daily_high).to eq(53.71)
    #go back and look at this method possibly pulling the wrong data
  end

  it 'returns daily low' do
    expect(@forecastfacade.daily_low).to eq(36.65)
    #go back and look at this method possibly pulling the wrong data
  end
end
