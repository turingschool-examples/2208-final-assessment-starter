require 'rails_helper'

RSpec.describe 'get toursit sights info' do
  it 'returns tourist sight info as json' do
    # filter = 'circle:2.3200410217200766,48.8588897,20000'
    # limit = 20
    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(parsed).to be_a(Hash)
    expect(parsed).to have_key(:type)
    expect(parsed).to have_key(:features)
    expect(parsed[:features]).to have_key(:type)
    expect(parsed[:features]).to have_key(:properties)
    expect(parsed[:features][:properties]).to have_key(:name)
    expect(parsed[:features][:properties]).to have_key(:country)
    expect(parsed[:features][:properties]).to have_key(:country_code)
    expect(parsed[:features][:properties]).to have_key(:region)
    expect(parsed[:features][:properties]).to have_key(:state)
    expect(parsed[:features][:properties]).to have_key(:county)
    expect(parsed[:features][:properties]).to have_key(:city)
    expect(parsed[:features][:properties]).to have_key(:municipality)
    expect(parsed[:features][:properties]).to have_key(:postcode)
    expect(parsed[:features][:properties]).to have_key(:suburub)
    expect(parsed[:features][:properties]).to have_key(:quarter)
    expect(parsed[:features][:properties]).to have_key(:street)
    expect(parsed[:features][:properties]).to have_key(:housenumber)
    expect(parsed[:features][:properties]).to have_key(:lon)
    expect(parsed[:features][:properties]).to have_key(:lat)
    expect(parsed[:features][:properties]).to have_key(:formatted)
    expect(parsed[:features][:properties]).to have_key(:address_line1)
    expect(parsed[:features][:properties]).to have_key(:address_line2)
    expect(parsed[:features][:properties]).to have_key(:categories)
    expect(parsed[:features][:properties]).to have_key(:details)
    expect(parsed[:features][:properties]).to have_key(:datasource)
    expect(parsed[:features][:properties]).to have_key(:place_id)
  end
end