require 'rails_helper'

RSpec.describe PlacesService do 
  it 'places info' do 
    response = PlacesService.tourist_sights(2.3483915, 48.8534951)

    expect(response).to be_a Hash
    expect(response[:features]).to be_a Array
    expect(response[:features].first[:properties]).to have_key :name
    expect(response[:features].first[:properties]).to have_key :formatted
    expect(response[:features].first[:properties]).to have_key :place_id
  end 
end 