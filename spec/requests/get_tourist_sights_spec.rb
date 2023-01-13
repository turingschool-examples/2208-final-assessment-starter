require "rails_helper"

RSpec.describe "Get Tourist Sights Info" do
  it "returns tourist sights information as JSON" do

    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    sights = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
  end
end