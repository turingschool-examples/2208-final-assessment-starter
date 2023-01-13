require 'rails_helper' 

RSpec.describe 'Get tourist sites near capital city' do 
  it 'returns tourist site info as json', :vcr do 

    get "/api/v1/tourist_sites?country=united states"

    expect(response).to be_successful

    sites = JSON.parse(response.body, symbolize_names: true) 
    expect(sites[:data].count).to eq(20)
    expect(sites).to be_a(Hash)
    expect(sites).to have_key(:data)
    expect(sites[:data][0]).to have_key(:id)
    expect(sites[:data][0]).to have_key(:type)
    expect(sites[:data][0]).to have_key(:attributes)
    expect(sites[:data][0][:attributes]).to have_key(:name)
    expect(sites[:data][0][:attributes]).to have_key(:address)
    expect(sites[:data][0][:attributes]).to have_key(:place_id)

    expect(sites[:data][0][:attributes][:name]).to eq("Zero Milestone")
    expect(sites[:data][0][:attributes][:address]).to eq("Zero Milestone, Ellipse Road Northwest, Washington, DC 20500, United States of America")
    expect(sites[:data][0][:attributes][:place_id]).to eq("5145f5d6c0564253c059df9f7d0393724340f00103f9011a2bc6da0100000092030e5a65726f204d696c6573746f6e65")

  end

  it 'country is case insensitive', :vcr do 
    get "/api/v1/tourist_sites?country=United States"
    expect(response).to be_successful

    sites = JSON.parse(response.body, symbolize_names: true) 
    expect(sites[:data].count).to eq(20)

    expect(sites[:data][0][:attributes][:name]).to eq("Zero Milestone")
    expect(sites[:data][0][:attributes][:address]).to eq("Zero Milestone, Ellipse Road Northwest, Washington, DC 20500, United States of America")
    expect(sites[:data][0][:attributes][:place_id]).to eq("5145f5d6c0564253c059df9f7d0393724340f00103f9011a2bc6da0100000092030e5a65726f204d696c6573746f6e65")
  end

  it 'sad path, returns error message if country is not valid', :vcr do 
    get "/api/v1/tourist_sites?country=dog"

    expect(response).to have_http_status 404
    errors = JSON.parse(response.body, symbolize_names: true)
    expect(errors[:error]).to eq("cannot find tourist sites without a valid country")
end
end