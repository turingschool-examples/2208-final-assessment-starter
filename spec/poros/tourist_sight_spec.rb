require 'rails_helper'

RSpec.describe TouristSight do
    it 'exists and has attributes' do
        properties = {
                        :name=>"Palais du Louvre",
                        :formatted=>"Louvre Palace, Pont du Carrousel, 75001 Paris, France",
                        :place_id=>"518d1bce0ed2af02405927f526f2356e4840f00101f90159c731000000000092031050616c616973206475204c6f75767265"
                      }

        tourist_sight = TouristSight.new(properties)

        expect(tourist_sight).to be_an_instance_of(TouristSight)
        expect(tourist_sight.name).to eq("Palais du Louvre")
        expect(tourist_sight.address).to eq("Louvre Palace, Pont du Carrousel, 75001 Paris, France")
        expect(tourist_sight.place_id).to eq("518d1bce0ed2af02405927f526f2356e4840f00101f90159c731000000000092031050616c616973206475204c6f75767265")
    end
end
