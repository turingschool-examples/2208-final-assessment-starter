require 'rails_helper'

RSpec.describe 'Get Tourist Sights Info' do
  it 'returns nearest tourist sights to the capital of a city as a json', :vcr do
    country = 'United Kingdom'

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response).to have_key(:data)
    expect(parsed_response[:data].first).to have_key(:id)
    expect(parsed_response[:data].first[:id]).to eq(nil)
    expect(parsed_response[:data].first).to have_key(:type)
    expect(parsed_response[:data].first[:type]).to eq('tourist_sight')
    expect(parsed_response[:data].first).to have_key(:attributes)
    expect(parsed_response[:data].first[:attributes]).to have_key(:name)
    expect(parsed_response[:data].first[:attributes]).to have_key(:address)
    expect(parsed_response[:data].first[:attributes]).to have_key(:place_id)
  end
end
