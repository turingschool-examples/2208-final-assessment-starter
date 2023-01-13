require 'rails_helper'

RSpec.describe 'Get tourist sights' do
  it 'returns list of places as a JSON' do
    country = 'France'

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response).to have_key(:data)
    expect(parsed_response[:data]).to be_an(Array)
    first_hit = parsed_response[:data].first

    expect(first_hit).to have_key(:id)
    expect(first_hit).to have_key(:type)
    expect(first_hit).to have_key(:attributes)
    expect(first_hit[:attributes]).to have_key(:name)
    expect(first_hit[:attributes]).to have_key(:address)
    expect(first_hit[:attributes]).to have_key(:place_id)
  end
end
