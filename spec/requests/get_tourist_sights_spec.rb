require 'rails_helper'

RSpec.describe 'get toursit sights info' do
  it 'returns tourist sight info as json' do
    # filter = 'circle:2.3200410217200766,48.8588897,20000'
    # limit = 20
    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    # require 'pry'; binding.pry
    expect(response).to be_successful
  end
end