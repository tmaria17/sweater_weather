require 'rails_helper'

describe CoordinateService do
  before :each do
    json_response = File.open("./fixtures/coordinate_response.json")
    stub_request(:get, "https://maps.googleapis.com/maps/api/geocode/json?address=10000 E Alameda Avenue,  Denver,  CO&key=#{ENV['google_key']}")
    .to_return(status: 200, body: json_response)
    @coordinates_service = CoordinateService.new('Denver, CO')

  end
  it 'exists' do
    expect(@coordinates_service).to be_a(CoordinateService)
  end
  it 'returns coordinates' do
    expect(@coordinates_service.get_coordinates).to eq({"lat": 39.7392358, "lng": -104.990251})
  end
end
