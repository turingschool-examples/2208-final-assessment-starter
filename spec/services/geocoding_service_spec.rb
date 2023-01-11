require 'rails_helper'

RSpec.describe GeocodingService do 
    it '.capital_info' do 
        response = GeocodingService.capital_info("Paris", "France")

        expect(response).to be_a Array
        expect(response.first).to be_a Hash
        expect(response.first).to have_key :name
        expect(response.first).to have_key :latitude
        expect(response.first).to have_key :longitude
        expect(response.first).to have_key :country
    end 
end 