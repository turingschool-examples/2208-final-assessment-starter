require 'rails_helper'

RSpec.describe "Tourist Sights API" do
  describe "GET /tourists_sights" do
    describe "When the records exist" do

      before :each do
        @country = "france"
        get "/api/v1/tourist_sights?country=#{@country}"
      end

      it "expects a successful response", :vcr do

        expect(response).to be_successful
      end

      it "returns status code 200", :vcr do

        expect(response).to have_http_status(200)
      end

      it "returns tourist sights", :vcr do
        json = JSON.parse(response.body, symbolize_names: true)

        expect(json).to be_a Hash

        expect(json).to have_key :data
        expect(json[:data]).to be_a Array

        expect(json[:data].first).to have_key :id
        expect(json[:data].first).to have_key :attributes

        expect(json[:data].first[:id]).to be nil
        expect(json[:data].first[:attributes]).to be_a Hash

        expect(json[:data].first[:attributes]).to have_key :name
        expect(json[:data].first[:attributes]).to have_key :address
        expect(json[:data].first[:attributes]).to have_key :place_id

        expect(json[:data].first[:attributes][:name]).to be_a(String).or(be(nil))
        expect(json[:data].first[:attributes][:address]).to be_a String
        expect(json[:data].first[:attributes][:place_id]).to be_a String
      end
    end

    describe "When the country input is invalid" do
      it "returns status 404", :vcr do
        get "/api/v1/tourist_sights?country=frenc3"

        expect(response).to have_http_status(404)
      end

      it "Returns an error message", :vcr do
        get "/api/v1/tourist_sights?country=frenc3"

        json = JSON.parse(response.body, symbolize_names: true)

        expect(json).to be_a Hash
        expect(json).to have_key :error
        expect(json[:error]).to be_a String
      end
    end
  end
end
