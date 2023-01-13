require 'rails_helper'

RSpec.describe 'Get Capital Info' do
  it 'returns capital info as json' do
    country = "France"

    get "/api/v1/capital_info?country=#{country}"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response).to have_key(:data)
    expect(parsed_response[:data]).to have_key(:id)
    expect(parsed_response[:data]).to have_key(:type)
    expect(parsed_response[:data]).to have_key(:attributes)
    expect(parsed_response[:data][:attributes]).to have_key(:city)
    expect(parsed_response[:data][:attributes]).to have_key(:country)
    expect(parsed_response[:data][:attributes]).to have_key(:country_code)
    expect(parsed_response[:data][:attributes]).to have_key(:latitude)
    expect(parsed_response[:data][:attributes]).to have_key(:longitude)
  end
end
