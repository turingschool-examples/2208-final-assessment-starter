require "rails_helper"

RSpec.describe "Get Tourist Sights Info" do
  it "returns tourist sights information as JSON" do

    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    sights = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(sights[:data].count).to eq(20)
    expect(sights).to be_a(Hash)
    expect(sights[:data].first[:id]).to eq(nil)
    expect(sights[:data].first[:type]).to eq("tourist_sight")
    expect(sights[:data].first[:attributes][:name]).to eq("Maison de Chateaubriand")
    expect(sights[:data].first[:attributes][:formatted_address]).to eq("Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France")
    expect(sights[:data].first[:attributes][:place_id]).to eq("515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64")
  end
end