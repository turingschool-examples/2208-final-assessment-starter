require 'rails_helper'

RSpec.describe PlacesService do
  it 'returns, as a response, a hash containing an array called features with each feature/element being a hash with information on a place of interest' do
      response = PlacesService.get_tourist_spots("31.2357257", "30.0443879") #Egypt, Cairo

      expect(response).to be_a Hash
      expect(response).to have_key :type
      expect(response).to have_key :features
      expect(response[:features]).to be_a(Array)
      expect(response[:features].first).to be_a(Hash)
      expect(response[:features].first[:properties][:name]).to eq("المركز المصرى للنسجيات")
      expect(response[:features].first[:properties][:formatted]).to eq("Egyptian textile center, 10 ع العبور Side Salah Salem Street, Hadaek Al Obour Buildings, Cairo, 11811, Egypt")
      expect(response[:features].first[:properties][:place_id]).to eq("51c7c22165d54f3f40598f5eb60721143e40f00103f901b14d12100100000092032ad8a7d984d985d8b1d983d8b220d8a7d984d985d8b5d8b1d98920d984d984d986d8b3d8acd98ad8a7d8aa")
  end
end