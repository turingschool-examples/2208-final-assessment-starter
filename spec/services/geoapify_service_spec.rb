require 'rails_helper'

RSpec.describe GeoapifyService do
  it 'exists' do
    geoap = GeoapifyService.new

    expect(geoap).to be_an_instance_of(GeoapifyService)
  end

  describe "Class Methods" do
    describe " " do

      let!(:france) { CountryFacade.capital_info("france") }

      it 'finds " " based off lat and lon coordinates', :vcr do

        response = GeoapifyService.closest_restaurants(france.latitude, france.longitude)
        expect(response).to have_key :features
        expect(response[:features]).to be_a Array
        expect(response[:features].first).to have_key :properties
        expect(response[:features].first[:properties]).to be_a Hash
        expect(response[:features].first[:properties]).to have_key :name
      end
    end
  end
end
