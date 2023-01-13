require 'rails_helper'

RSpec.describe PlacesFacade, :vcr do
  it 'returns places from capital of searched country' do
    capital_info = CountryFacade.capital_info("France")
    places = PlacesFacade.places(capital_info)

    expect(places).to be_an Array
    expect(places.first).to be_a Place
  end
end
