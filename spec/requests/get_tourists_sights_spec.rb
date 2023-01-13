require 'rails_helper'

RSpec.describe 'Get Tourist sights Info' do 
    it 'returns capital info as json' do 
        country = "France"

        get "/api/v1/tourist_sights?country=#{country}"

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body,symbolize_names: true)

        expect(parsed_response).to be_a(Hash)
        expect(parsed_response).to have_key(:data)
        expect(parsed_response[:data].first).to have_key(:id)
        expect(parsed_response[:data].first).to have_key(:type)
        expect(parsed_response[:data].first).to have_key(:attributes)
        expect(parsed_response[:data][0][:attributes]).to have_key(:name)
        expect(parsed_response[:data][0][:attributes]).to have_key(:address)
        expect(parsed_response[:data][0][:attributes]).to have_key(:place_id)
    end 
end 