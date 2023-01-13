require 'rails_helper'

RSpec.describe 'TouristSight' do
  it 'exists, with attributes' do
    attributes = {
      name: 'foo sight name',
      address_line2: 'foo sight address',
      place_id: 'big foo alphanumeric string'
    }

    sight = TouristSight.new(attributes)

    expect(sight).to be_a TouristSight
    expect(sight.name).to eq('foo sight name')
    expect(sight.address).to eq('foo sight address')
    expect(sight.place_id).to eq('big foo alphanumeric string')
  end
end
