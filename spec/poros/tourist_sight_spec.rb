require 'rails_helper'

RSpec.describe TouristSight do 
    it 'exists and has attributes' do 
        tourist_sight_info = {
                            :name=>"Tour de l'horloge", 
                            :address=>"Tour de l'horloge, Allée de l'Horloge, 23200 Aubusson, France", 
                            :place_id=>"515d1f5d627"
                        }

        sight = TouristSight.new(tourist_sight_info)

        expect(sight).to be_an_instance_of(TouristSight)
        expect(sight.name).to eq("Tour de l'horloge")
        expect(sight.address).to eq("Tour de l'horloge, Allée de l'Horloge, 23200 Aubusson, France")
        expect(sight.place_id).to eq("515d1f5d627")
    end 
end 