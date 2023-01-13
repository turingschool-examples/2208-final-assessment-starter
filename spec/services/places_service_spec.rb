require 'rails_helper'

RSpec.describe PlacesService do
  it '.tourist_sights' do
    response = PlacesService.tourist_sights(latitude, longitude)

    expect(response).to be_a Hash
    expect(response).to have_key :type
    expect(response).to have_key :features
    expect(response[:features]).to be_an Array

    first_hit = response[:features].first

    expect(first_hit).to be_a Hash
    expect(first_hit).to have_key :type
    expect(first_hit).to have_key :properties

    properties = first_hit[:properties]
    expect(properties).to be_a Hash
    expect(properties).to have_key :name
    expect(properties).to have_key :country
    expect(properties).to have_key :address_line2
    expect(properties).to have_key :place_id
  end
end
