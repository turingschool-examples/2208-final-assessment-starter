require "rails_helper"

RSpec.describe TouristSightsFacade do 
  describe "::sights_info" do 
    it "returns an array of TouristSight objects for a given country" do 
      VCR.use_cassette("tourist_sight_facade_test") do 
        sights = TouristSightsFacade.sights_info('United States')

        expect(sights).to be_an(Array)

        sights.each do |sight|
          expect(sight).to be_an_instance_of(TouristSight)
          expect(sight.name).to be_a(String)
          expect(sight.address).to be_a(String)
          expect(sight.place_id).to be_a(String)
        end
      end
    end
  end

  describe "::service" do 
    it "creates an instance of the PlacesService" do 
      expect(TouristSightsFacade.service).to be_an_instance_of(PlacesService)
    end
  end
end