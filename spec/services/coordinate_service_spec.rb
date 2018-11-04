require 'rails_helper'

describe CoordinateService do
  it 'exists' do
    coordinate_service = CoordinateService.new
    expect(coordinate_service).to be_a(CoordinateService)
  end
end
