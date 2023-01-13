require 'rails_helper'

RSpec.describe TouristService do
  let!(:london_latitude) { 51.5073219 }
  let!(:london_longitude) { -0.1276474 }

  it 'tourist sight info', :vcr do
    response = TouristService.search_tourist_sites(london_longitude, london_latitude)

    expect(response[:features]).to be_an Array
    expect(response[:features].first[:properties]).to be_a Hash
    expect(response[:features].first[:properties]).to have_key :name
    expect(response[:features].first[:properties]).to have_key :formatted
    expect(response[:features].first[:properties]).to have_key :place_id
  end
end
