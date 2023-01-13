require 'rails_helper'

RSpec.describe CountryFacade, :vcr do 
    it '.capital_info' do 
        capital = CountryFacade.capital_info("Nigeria")
        expect(capital).to be_an_instance_of(Capital)
    end 

    it '.tourist_sights' do
        tourist_sights = CountryFacade.tourist_sights("Costa Rica")
        expect(tourist_sights.first).to be_an_instance_of(TouristSight)
    end
end 