require 'rails_helper'

RSpec.describe PlacesService do
  describe '.class methods' do
    describe '.conn' do
      it 'connects to the Places API' do
        response = PlacesService.conn
        expect(response.params).to have_key :apiKey
      end
    end

    describe '.get_url' do
      it 'parses through the response body and returns a JSON hash with keys as symbols' do
        VCR.insert_cassette 'url_places'
        url = PlacesService.get_url("/v2/places?categories=tourism.sights&filter=circle:2.32,48.5,20000")
        expect(url).to be_a Hash
        VCR.eject_cassette
      end
    end

    describe '.get_place' do
      it 'returns tourist sights near the area' do
        VCR.insert_cassette 'get_place'
        response = PlacesService.get_place(2.3200410217200766,48.8588897)

        expect(response).to be_a Hash
        expect(response[:features]).to be_an Array

        sight = response[:features][0][:properties]
        expect(sight).to have_key :name
        expect(sight).to have_key :address_line1
        expect(sight).to have_key :address_line2
        expect(sight).to have_key :place_id
        VCR.eject_cassette
      end
    end
  end
end