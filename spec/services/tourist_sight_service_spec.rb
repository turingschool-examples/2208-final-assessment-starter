require 'rails_helper'

RSpec.describe TouristSightService do
    it '.get_tourist_sights' do
        response = TouristSightService.get_tourist_sights("2.3200410217200766,48.8588897,2000")

        expect(response).to be_an Array
        expect(response.first[:properties]).to be_a(Hash)

        expect(response.first[:properties]).to have_key :name
        expect(response.first[:properties]).to have_key :formatted
        expect(response.first[:properties]).to have_key :place_id
    end
end
