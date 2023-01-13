require 'rails_helper'

RSpec.describe 'Get Tourist Sights' do 
  it 'returns capital info as json' do 
    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful

    sights = JSON.parse(response.body,symbolize_names: true)

    expect(sights).to be_a(Hash)
    expect(sights).to have_key(:data)

    sight = sights[:data].first

    expect(sight).to have_key(:id)
    expect(sight).to have_key(:type)
    expect(sight).to have_key(:attributes)
    expect(sight[:attributes]).to have_key(:name)
    expect(sight[:attributes]).to have_key(:address)
    expect(sight[:attributes]).to have_key(:place_id)
  end 
end 