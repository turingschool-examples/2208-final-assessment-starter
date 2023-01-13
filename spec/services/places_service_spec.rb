require 'rails_helper'

RSpec.describe PlacesService do 
  it '.capital_info' do
    longitude = "2.3483915"
    latitude = "48.8534951"

    response = PlacesService.tourist_sights(longitude, latitude)

    expect(response).to be_a Hash
    expect(response[:features]).to be_a Array

    sight = response[:features].first[:properties]

    expect(sight).to have_key :name
    expect(sight).to have_key :formatted
    expect(sight).to have_key :place_id
  end 
end 