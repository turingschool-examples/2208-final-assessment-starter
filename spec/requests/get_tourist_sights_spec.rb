require 'rails_helper'

RSpec.describe 'Get Tourist Sights' do 
  it 'returns a list of tourist_sight objects with name, formatted, address, and place_id' do 
    VCR.use_cassette('get_tourist_sights_for_france') do 
      get "/api/v1/tourist_sights?country=France"

      expect(response).to be_successful
      expect(response.status).to eq(200)

      response_body = JSON.parse(response.body, symbolize_names: true)
  
      sights = response_body[:data]
  
      expect(sights).to be_an(Array)
  
      sights.each do |sight|
        expect(sight).to be_a(Hash)
        expect(sight[:id]).to eq(nil)
        expect(sight[:type]).to eq("tourist_sight")
        expect(sight[:attributes]).to be_a(Hash)
        expect(sight[:attributes]).to have_key(:name)
        expect(sight[:attributes][:name]).to be_a(String)
        expect(sight[:attributes]).to have_key(:address)
        expect(sight[:attributes][:address]).to be_a(String)
        expect(sight[:attributes]).to have_key(:place_id)
        expect(sight[:attributes][:place_id]).to be_a(String)
      end
    end
  end
end