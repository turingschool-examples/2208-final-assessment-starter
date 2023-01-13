require 'rails_helper'

RSpec.describe TouristSight do
  before(:each) do
    sight_info = {
      :name=>"Maison de Chateaubriand",
      :address=>"Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France",
      :place_id=>"515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64"
    }

    @tourist_sight = TouristSight.new(sight_info)
  end

  expect(@tourist_sight).to be_a(TouristSight)
  expect(@tourist_sight.name).to eq("Maison de Chateaubriand")
  expect(@tourist_sight.address).to eq("Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France")
  expect(@tourist_sight.place_id).to eq("515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64")
end