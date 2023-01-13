require 'rails_helper'

RSpec.describe 'tourist sight api' do 
  before :each do 
    country = 'France'
    get "/api/v1/tourist_sights?country=#{country}"

    @sights_list = JSON.parse(response.body, symbolize_names: true)
  end

  it 'response includes name, address, and place_id' do 
    expect(response).to be_successful
  end
end