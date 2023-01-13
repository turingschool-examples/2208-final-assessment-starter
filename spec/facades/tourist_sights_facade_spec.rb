require 'rails_helper'

RSpec.describe TouristSightsFacade do 
    it '.capital_info' do 
        tourist_sights = TouristSightsFacade.spots_info("Egypt")
        expect(tourist_sights).to be_a(Array)
        expect(tourist_sights.first.name).to eq("المركز المصرى للنسجيات")
        expect(tourist_sights.first.address).to eq("Egyptian textile center, 10 ع العبور Side Salah Salem Street, Hadaek Al Obour Buildings, Cairo, 11811, Egypt")
        expect(tourist_sights.first.place_id).to eq("51c7c22165d54f3f40598f5eb60721143e40f00103f901b14d12100100000092032ad8a7d984d985d8b1d983d8b220d8a7d984d985d8b5d8b1d98920d984d984d986d8b3d8acd98ad8a7d8aa")
    end 
end 