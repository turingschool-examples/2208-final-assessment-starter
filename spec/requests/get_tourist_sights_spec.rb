require 'rails_helper'

RSpec.describe 'Get Tourist Sights' do 
  it 'returns a list of tourist_sight objects with name, formatted, address, and place_id' do 
    get "/api/v1/tourist_sights?country=France"
    
  end
end