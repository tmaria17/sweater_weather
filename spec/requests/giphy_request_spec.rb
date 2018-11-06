require 'rails_helper'

describe 'Get gifs' do
  it 'returns gifs based on location' do
    get '/api/v1/gifs?location=denver,co'
    expect(response.status).to eq(200)
    gifs = JSON.parse(response.body, symobolize_names: true)
    # expect(gifs).to have_key(:data)
  end
end
