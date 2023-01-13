require 'rails_helper'

RSpec.describe 'Get Tourist Sights' do 
    it 'returns a list of tourist sights as json' do 
        country = "Egypt"

        get "/api/v1/tourist_sights?country=#{country}"

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body,symbolize_names: true)
        
        expect(parsed_response).to be_a(Hash)
        expect(parsed_response).to have_key(:data)
        expect(parsed_response[:data].first).to have_key(:id)
        expect(parsed_response[:data].first).to have_key(:type)
        expect(parsed_response[:data].first).to have_key(:attributes)
        expect(parsed_response[:data].first[:attributes]).to have_key(:name)
        expect(parsed_response[:data].first[:attributes]).to have_key(:address)
        expect(parsed_response[:data].first[:attributes]).to have_key(:place_id)
    end 

    it 'returns custom error json if invalid input is given' do
      country = ""

      get "/api/v1/tourist_sights?country=#{country}"

      parsed_response = JSON.parse(response.body,symbolize_names: true)
      
      expect(response.status).to eq(500)
      expect(parsed_response).to eq({
        status: "error",
        message: "Please enter valid country. Example: if England does not work, try United Kingdom.",
        code: "500"
      })
    end
end 