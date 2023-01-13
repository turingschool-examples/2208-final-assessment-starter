require 'rails_helper'

RSpec.describe PlacesService do
  describe 'class methods' do
    describe '#find_tourist_sites' do
      it 'returns json of tourist sites within a 20,000m radius of a capital
      city given in the form of latitude and longitude' do
        latitude = 52.5170365
        longitude = 13.3888599
        response = PlacesService.find_tourist_sites(longitude, latitude)

        expect(response[:features]).to be_a Array
        expect(response[:features][0][:properties]).to be_a Hash
        expect(response[:features][0][:properties][:name]).to be_a String
        expect(response[:features][0][:properties][:formatted]).to be_a String
        expect(response[:features][0][:properties][:place_id]).to be_a String
      end
    end
  end
end