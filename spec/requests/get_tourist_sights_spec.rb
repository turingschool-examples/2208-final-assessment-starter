require 'rails_helper'

RSpec.describe 'Get Tourist Sights' do 
    it 'returns capital info as json' do 
        country = "France"

        get "/api/v1/tourist_sights?country=#{country}"

        expect(response).to be_successful

        parsed_response = JSON.parse(response.body,symbolize_names: true)

        expect(parsed_response).to be_a(Hash)
    end 
end 