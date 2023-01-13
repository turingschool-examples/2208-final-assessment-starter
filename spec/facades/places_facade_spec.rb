require 'rails_helper'

RSpec.describe PlacesFacade do
  it '.tourist_sights' do
    capital = CountryFacade.capital_info('France')
    sights = PlacesFacade.tourist_sights(capital.latitude, capital.longitude)
    # binding.pry
    expect(sights).to be_an(Array)
    expect(sights.first).to be_an_instance_of(TouristSight)
  end
end 