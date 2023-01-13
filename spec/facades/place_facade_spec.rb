require 'rails_helper'

RSpec.describe PlacesFacade, :vcr do
  it 'returns places from capital of searched country' do
    capital_info = CountryFacade.capital_info("France")
    sights = PlacesFacade.places(capital_info)

    expect(sights).to be_an Array
    sights.each do |s|
      expect(s).to be_a TouristSight
    end
  end
end
