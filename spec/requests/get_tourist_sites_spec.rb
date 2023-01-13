require 'rails_helper'

RSpec.describe 'GET tourist sites' do
  it "returns json of tourist sites in a given country's capital city" do
    get '/api/v1/tourist_sights?country=Germany'

    expect(response).to be_successful

    parsed_json = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_json[:data]).to be_a Array
    expect(parsed_json[:data][0][:id]).to eq('null')
    expect(parsed_json[:data][0][:type]).to eq('tourist_sight')
    expect(parsed_json[:data][0][:attributes]).to be_a Hash
    expect(parsed_json[:data][0][:attributes][:name]).to be_a String
    expect(parsed_json[:data][0][:attributes][:address]).to be_a String
    expect(parsed_json[:data][0][:attributes][:place_id]).to be_a String
  end
end