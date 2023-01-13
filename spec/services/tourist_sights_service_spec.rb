require 'rails_helper'

RSpec.describe TouristSightsService do 
    it '.capital_info' do 
        response = TouristSightsService.tourist_sights(2.3200410217200766, 48.8588897)

        expect(response).to be_a Hash
        expect(response[:features].first[:properties]).to be_a Hash
        expect(response[:features].first[:properties]).to have_key :name
        expect(response[:features].first[:properties]).to have_key :formatted
        expect(response[:features].first[:properties]).to have_key :place_id
    end 
end 