require "rails_helper"

RSpec.describe PlacesService do 
  describe "#get_sights" do 
    it "returns a parsed collection of sights for a given longitude and latitude" do 
      VCR.use_cassette('get_sights') do 
        service = PlacesService.new
        long, lat = ['2.3200410217200766', '48.8588897']
        result = service.get_sights(long, lat)

        expect(result).to be_a(Hash)
        expect(result).to have_key(:features)
        expect(result[:features]).to be_an(Array)
        result[:features].each do |feature|
          expect(feature).to have_key(:properties)
          expect(feature[:properties]).to have_key(:name)
          expect(feature[:properties][:name]).to be_a(String)
          expect(feature[:properties]).to have_key(:formatted)
          expect(feature[:properties][:formatted]).to be_a(String)
          expect(feature[:properties]).to have_key(:place_id)
          expect(feature[:properties][:place_id]).to be_a(String)
        end
      end
    end
  end

  describe "#conn" do 
    it "creates a faraday connection with geoapify.com" do 
      service = PlacesService.new 

      expect(service.conn).to be_a(Faraday::Connection)
      expect(service.conn.url_prefix.hostname).to eq("api.geoapify.com")
    end
  end
end