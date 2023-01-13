require 'rails_helper'

describe PlacesService, :vcr do
  it '.get_places' do
    capital = CountryFacade.capital_info("France")
    places = PlacesService.get_tourist_sights(capital)
    places.each do |place|
      expect(place.keys).to eq([:type, :properties, :geometry])
      expect(place[:properties]).to have_key(:name)
      expect(place[:properties]).to have_key(:formatted)
      expect(place[:properties]).to have_key(:place_id)
      expect(place[:properties][:name]).to be_a String
      expect(place[:properties][:formatted]).to be_a String
      expect(place[:properties][:place_id]).to be_a String
    end
  end
end
