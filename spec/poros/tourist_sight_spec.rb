require 'rails_helper'

RSpec.describe TouristSight do 
    it 'exists and has attributes' do 
        spot = {
          "type": "Feature",
          "properties": {
              "name": "المركز المصرى للنسجيات",
              "formatted": "Egyptian textile center, 10 ع العبور Side Salah Salem Street, Hadaek Al Obour Buildings, Cairo, 11811, Egypt",
              "place_id": "51c7c22165d54f3f40598f5eb60721143e40f00103f901b14d12100100000092032ad8a7d984d985d8b1d983d8b220d8a7d984d985d8b5d8b1d98920d984d984d986d8b3d8acd98ad8a7d8aa"
          },
          "geometry": {
              "type": "Point",
              "coordinates": [
                  31.311849899999995,
                  30.078628999732754
              ]
          }
      }

        tourist_sight = TouristSight.new(spot)

        expect(tourist_sight).to be_an_instance_of(TouristSight)
        expect(tourist_sight.name).to eq("المركز المصرى للنسجيات")
        expect(tourist_sight.address).to eq("Egyptian textile center, 10 ع العبور Side Salah Salem Street, Hadaek Al Obour Buildings, Cairo, 11811, Egypt")
        expect(tourist_sight.place_id).to eq("51c7c22165d54f3f40598f5eb60721143e40f00103f901b14d12100100000092032ad8a7d984d985d8b1d983d8b220d8a7d984d985d8b5d8b1d98920d984d984d986d8b3d8acd98ad8a7d8aa")
    end 
end 