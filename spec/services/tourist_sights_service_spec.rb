require 'rails_helper'

RSpec.describe TouristSightsService do 
    it '.tourist_sights' do 
        response = TouristSightsService.tourist_sights_info("France")
      
        expect(response).to be_a Hash
        expect(response[features]).to be_a Array
        expect(response[features].first).to be_a Hash
        expect(response[features].first[properties]).to be_a Hash
        expect(response[features].first[properties]).to have_key :name
        expect(response[features].first[properties]).to have_key :formatted
        expect(response[features].first).to have_key :place_id
    end 
end 