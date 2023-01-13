require 'rails_helper'

RSpec.describe PlacesService do 
    it '.tourist_site' do 
      response_file = File.read('spec/fixtures/france.json')
      lon = "2.3200410217200766"
      lat = "48.8588897"
    
      response = PlacesService.tourist_site(lon,lat)

      expect(response[:features]).to be_a Array
      expect(response).to be_a Hash
      expect(response[:features].count).to eq(20)
      expect(response[:features][0]).to have_key :type
      expect(response[:features][0]).to have_key :properties

    end 
end 