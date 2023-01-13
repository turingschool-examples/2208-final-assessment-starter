require 'rails_helper'

RSpec.describe TouristSightFacade do
  describe 'Tourist Sight Facade', :vcr do
    let!(:london_latitude) { 51.5073219 }
    let!(:london_longitude) { -0.1276474 }
    let(:tourist_sights) { TouristSightFacade.tourist_sights(london_longitude, london_latitude) }

    it 'exists' do
      expect(TouristSightFacade.new).to be_an_instance_of(TouristSightFacade)
    end

    it 'returns relevant info for tourist sights' do
      expect(tourist_sights).to be_an Array
      expect(tourist_sights.first.address).to be_a String
      expect(tourist_sights.first.place_id).to be_a String
      expect(tourist_sights.first.name).to be_an String
    end
  end
end
