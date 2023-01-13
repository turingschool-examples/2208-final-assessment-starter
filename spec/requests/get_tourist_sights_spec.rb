require 'rails_helper'

RSpec.describe 'Get Tourist Sights' do
  it 'returns the tourist sights as json' do
    params = {country: 'France'}
    get '/api/v1/tourist_sights', params: params

    expect(response).to be_successful
    response = JSON.parse(response.body, symbolize_names: true)
  end
end