require "rails_helper"

RSpec.describe "Get Tourist Sights Info" do
  it "returns tourist sights information as JSON" do

    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"
    expect(response).to be_successful
  end
end