require 'rails_helper'

describe CoordinateService do
  it 'exists' do
    coordinate_service = CoordinateService.new('Denver, CO')
    expect(coordinate_service).to be_a(CoordinateService)
  end
  it 'returns coordinates' do
    service = CoordinateService.new('10000 E Alameda Avenue,  Denver,  CO')
    # binding.pry

    expect(service.get_coordinates).to eq({"lat": 39.708285, "lng": -104.8714487})
  end
end
