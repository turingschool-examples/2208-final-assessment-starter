require 'rails_helper'

RSpec.describe TouristSight do
  it 'exists' do
    attrs = [:properties => {name: 'Krusty Krab', address_line1: 'Krusty', address_line2: '124 Conch Street', place_id: '12345678910'}]
    sight = TouristSight.new(attrs[0])

    expect(sight).to be_an_instance_of TouristSight
    expect(sight.name).to eq('Krusty Krab')
    expect(sight.address1).to eq('Krusty')
    expect(sight.address2).to eq('124 Conch Street')
    expect(sight.place_id).to eq('12345678910')
  end
end