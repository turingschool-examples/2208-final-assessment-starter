require 'rails_helper'

RSpec.describe PlaceFacade do
  describe 'class methods' do
    describe 'get_tourist_places' do
      it 'returns an array of Place objects for a given latitude and longitude' do
        latitude = 52.5170365
        longitude = 13.3888599
        places = PlaceFacade.get_tourist_places(longitude, latitude)

        places.each do |place|
          expect(place).to be_a Place
        end
      end
    end
  end
end