require 'rails_helper'

RSpec.describe 'Tourist sights end point' do 
  it 'builds tourist sights endpoint for france' do 

    get "/api/v1/tourist_sights?country=France"
    
    expect(response.to be_successful)
    expect(response.status).to eq(200)
  end
end