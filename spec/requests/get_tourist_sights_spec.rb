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
    end
  end
end
