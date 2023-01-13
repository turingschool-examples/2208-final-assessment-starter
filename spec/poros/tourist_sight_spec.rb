require 'rails_helper'

RSpec.describe TouristSight do
  it 'exists and has attributes' do
    sight_info = {
      name: "Tour de l'horloge",
      address: "Tour de l'horloge, Allée de l'Horloge, 23200 Aubusson, France",
      place_id: '91287375987123'
    }

    tourist_sight = TouristSight.new(sight_info)

    expect(tourist_sight).to be_an_instance_of(TouristSight)
    expect(tourist_sight.name).to eq("Tour de l'horloge")
    expect(tourist_sight.address).to eq(sight_info[:address])
    expect(tourist_sight.place_id).to eq(sight_info[:place_id])
  end
end
