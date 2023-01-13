require 'rails_helper'

RSpec.describe TouristSightFacade do
    it '.capital_tourist_sights' do
        capital = CountryFacade.capital_info("Nigeria")

        tourist_sights = TouristSightFacade.capital_tourist_sights(capital)
        expect(tourist_sights)>to be_an(Array)
        expect(tourist_sights[0]).to be_an_instance_of TouristSight
    end
end
