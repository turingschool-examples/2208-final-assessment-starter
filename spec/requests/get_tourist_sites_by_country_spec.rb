require 'rails_helper' 

RSpec.describe 'Get tourist sites near capital city' do 
  it 'returns tourist site info as json' do 

    get "/api/v1/tourist_sites?country=united states"

    expect(response).to be_successful

    sites = JSON.parse(response.body, symbolize_names: true) 
    expect(sites).to be_a(Hash)
    expect(sites).to have_key(:data)
    expect(sites[:data][0]).to have_key(:id)
    expect(sites[:data][0]).to have_key(:type)
    expect(sites[:data][0]).to have_key(:attributes)
    expect(sites[:data][0][:attributes]).to have_key(:name)
    expect(sites[:data][0][:attributes]).to have_key(:address)
    expect(sites[:data][0][:attributes]).to have_key(:place_id)
  end
end