require 'rails_helper'

RSpec.describe TouristSight do
  let!(:tourist_sight_data) do
    {
      place_id: '518962e9c00257c0bf59b15c07c4efc04940f00102f901e35eed0f00000000920309436861726c65732049',
      name: 'Charles I',
      formatted: 'Charles I, Charing Cross, London SW1A 2DX, United Kingdom'
    }
  end

  let!(:tourist_sight) { TouristSight.new(tourist_sight_data) }

  it 'exists and has attributes' do
    expect(tourist_sight).to be_an_instance_of(TouristSight)
    expect(tourist_sight.place_id).to eq('518962e9c00257c0bf59b15c07c4efc04940f00102f901e35eed0f00000000920309436861726c65732049')
    expect(tourist_sight.name).to eq('Charles I')
    expect(tourist_sight.address).to eq('Charles I, Charing Cross, London SW1A 2DX, United Kingdom')
  end
end
