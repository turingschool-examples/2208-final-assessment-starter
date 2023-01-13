require 'rails_helper'

RSpec.describe TouristSight do 
    it 'exists and has attributes' do 
        tourist_sight_info = { 
            properties: {
                            :name=>"Cascada de Fuego", 
                            :formatted=>"Cascada de Fuego, Calle Pica Piedra, Patarrá, Quebrada Honda, 10307 Costa Rica", 
                            :place_id=>"510d05d515b00155c059f768fc1b1dc02340f00102f9010ed79508000000009203104361736361646120646520467565676f"
                        }
        }
        country = "Costa Rica"

        tourist_sight = TouristSight.new(tourist_sight_info)

        expect(tourist_sight).to be_an_instance_of(TouristSight)
        expect(tourist_sight.name).to eq("Cascada de Fuego")
        expect(tourist_sight.address).to eq("Cascada de Fuego, Calle Pica Piedra, Patarrá, Quebrada Honda, 10307 Costa Rica")
        expect(tourist_sight.place_id).to eq("510d05d515b00155c059f768fc1b1dc02340f00102f9010ed79508000000009203104361736361646120646520467565676f")
    end 
end 