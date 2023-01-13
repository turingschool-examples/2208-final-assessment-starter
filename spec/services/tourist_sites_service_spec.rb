require 'rails_helper'
RSpec.describe TouristSitesService do 
  it 'returns tourist sights within 20000m of a latitude and longitude' do 
    response = TouristSitesService.nearby_tourist_sites("-77.0365427", "38.8950368")
  
    expect(response).to be_a Hash 

    expect(response[:features][0][:properties]).to have_key :name 
    expect(response[:features][0][:properties]).to have_key :place_id 

  end
end