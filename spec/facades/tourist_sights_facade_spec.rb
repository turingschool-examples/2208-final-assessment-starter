require 'rails_helper'

RSpec.describe TouristSightsFacade do 
    it '.capital_info' do 
        sights = TouristSightsFacade.sights("Nigeria")

      
        expect(sights).to be_a(Array)
        expect(sights.first.name).to be_a(String)
        expect(sights.first.address).to be_a(String)
        expect(sights.first.place_id).to be_a(String)
    end 
end 