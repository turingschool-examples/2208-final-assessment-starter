require 'rails_helper'

RSpec.describe 'Get Capital Info' do 

    it 'returns ' do
        get "/api/v1/tourist_sights?country=France"

        expect(response).to be_successful

        info = JSON.parse(response.body,symbolize_names: true)
        
        expect(info).to be_a(Hash)
        expect(info).to have_key(:data)
        expect(info[:data][0]).to have_key(:id)
        expect(info[:data][0]).to have_key(:type)
        expect(info[:data][0]).to have_key(:attributes)
        expect(info[:data][0][:attributes]).to have_key(:name)
        expect(info[:data][0][:attributes]).to have_key(:address)
        expect(info[:data][0][:attributes]).to have_key(:place_id)

    end
end 