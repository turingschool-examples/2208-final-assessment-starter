require 'rails_helper'

RSpec.describe TouristSightsFacade do 
    it '.tourist_sights' do 
        tourist_sights = TouristSightsFacade.tourist_sights("France")
        expect(tourist_sights.first).to be_an_instance_of(TouristSight)
        expect(tourist_sights.first.name).to eq("Maison de Chateaubriand")
        expect(tourist_sights.first.address).to eq("Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France")
        expect(tourist_sights.first.place_id).to eq("515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64")
    end 
end 