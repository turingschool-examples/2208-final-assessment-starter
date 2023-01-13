require 'rails_helper'

RSpec.describe 'Get Capital Info', :vcr do
  it 'returns tourist sights within 20km, based on country, as JSON' do
    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful
  end
end
