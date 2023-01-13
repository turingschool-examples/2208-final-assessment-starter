require 'rails_helper'

RSpec.describe 'get toursit sights info' do
  it 'returns tourist sight info as json' do
    # filter = 'circle:2.3200410217200766,48.8588897,20000'
    # limit = 20
    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(parsed).to be_a(Hash)
    expect(parsed).to have_key(:data)
    expect(parsed[:data].first).to have_key(:id)
    expect(parsed[:data].first).to have_key(:type)
    expect(parsed[:data].first).to have_key(:attributes)

    sight = parsed[:data].first 

    expect(sight[:attributes]).to have_key(:name)
    expect(sight[:attributes]).to have_key(:address)
    expect(sight[:attributes]).to have_key(:place_id)
  end
end