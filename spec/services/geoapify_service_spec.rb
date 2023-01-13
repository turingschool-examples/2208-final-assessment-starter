require 'rails_helper'

RSpec.describe GeoapifyService, :vcr do 
    it '.get_tourist_sights' do
        longitude = '-84.0795782'
        latitude = '9.9325427'
        response = GeoapifyService.get_tourist_sights(longitude, latitude)

        expect(response).to be_a Hash
        expect(response[:features].first).to have_key :properties
        expect(response[:features].first[:properties]).to have_key :name
        expect(response[:features].first[:properties]).to have_key :formatted
        expect(response[:features].first[:properties]).to have_key :place_id
    end 
end 