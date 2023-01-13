require 'rails_helper'

RSpec.describe TouristSight do
  describe 'initialize' do
    it 'exists' do
      attributes = {
        name: "Maison de Chateaubriand",
        formatted: "Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France",
        place_id: "515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64"
      }

      place = TouristSight.new(attributes)
      expect(place).to be_instance_of(TouristSight)
      expect(place.name).to eq("Maison de Chateaubriand")
      expect(place.address).to eq("Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France")
      expect(place.place_id).to eq("515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64")
    end
  end
end