require 'rails_helper'

RSpec.describe TouristSightFacade do
  it 'creates a tourist sight object and gets the objects attributes' do
    sight = TouristSightFacade.get_tourist_sight('circle:2.3200410217200766,48.8588897,20000')

    expect(sight).to be_a(TouristSight)
  end
end