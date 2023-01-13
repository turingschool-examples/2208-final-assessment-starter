require 'rails_helper'

RSpec.describe 'Get Capital Info', :vcr do
  it 'returns tourist sights within 20km, based on country, as JSON' do
    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body,symbolize_names: true)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response).to have_key(:data)
    expect(parsed_response[:data]).to be_an(Array)
      #is it better to check the first or enumerate checking all (similar to facade/service spec)?
    expect(parsed_response[:data].first).to have_key(:id)
    expect(parsed_response[:data].first).to have_key(:type)
    expect(parsed_response[:data].first).to have_key(:attributes)
    expect(parsed_response[:data].first[:attributes]).to have_key(:name)
    expect(parsed_response[:data].first[:attributes]).to have_key(:address)
    expect(parsed_response[:data].first[:attributes]).to have_key(:place_id)
    expect(parsed_response[:data].first[:attributes][:name]).to be_a(String)
    expect(parsed_response[:data].first[:attributes][:address]).to be_a(String)
    expect(parsed_response[:data].first[:attributes][:place_id]).to be_a(String)
  end
end
