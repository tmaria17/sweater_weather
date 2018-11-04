require 'rails_helper'

describe 'Get location' do
  it 'returns coordinates' do
    get '/api/v1/forecast?location=denver,co'
    expect(response.status).to eq(200)
  end
end
