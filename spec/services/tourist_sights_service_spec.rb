require 'rails_helper'

RSpec.describe TouristSightsService do 
    it '.tourist_sights' do 
        response = TouristSightsService.tourist_sights_info("France")
      
        expect(response).to be_a Hash
        expect(response[features]).to be_a Array
        expect(response[features].first).to be_a Hash
        expect(response[features].first).to have_key :name
        expect(response[features].first).to have_key :latitude
        expect(response[features].first).to have_key :longitude
        expect(response[features].first).to have_key :country
    end 
end 