require 'rails_helper'
#https://api.geoapify.com/v2/places?categories=tourism.sights&filter=circle:1.8883335,46.603354,20000&bias=proximity:1.8883335,46.603354&limit=20&apiKey=YOUR_API_KEY

RSpec.describe TouristSightsService do
 it 'returns a response of tourist sights within the given /long/lat' do 
     response = TouristSightsService.get_tourist_sights(1.8883335, 46.603354)
      
    expect(response).to be_a(Hash)
    expect(response[:features]).to be_a(Array)
    expect(response[:features].first[:properties]).to have_key :name
    expect(response[:features].first[:properties]).to have_key :address_line1
    expect(response[:features].first[:properties]).to have_key :place_id
 end
end