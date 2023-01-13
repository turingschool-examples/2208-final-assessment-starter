require 'rails_helper'

RSpec.describe 'Get Capital tourist sights Info' do
  it 'returns tourist sights as json' do
    country = "France"

    get "/api/v1/tourist_sights?country=#{country}"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response).to have_key(:data)

    expect(parsed_response[:data]).to be_an Array

    expect(parsed_response[:data].count).to be >= 0
    expect(parsed_response[:data].count).to be <= 20

    parsed_response[:data].each do |hash_object|
      expect(hash_object).to be_a Hash
      expect(hash_object).to have_key :id
      expect(hash_object).to have_key :type
      expect(hash_object[:type]).to eq('tourist_sight')
      expect(hash_object).to have_key :attributes
      expect(hash_object[:attributes]).to be_a Hash
      expect(hash_object[:attributes]).to have_key :name
      expect(hash_object[:attributes]).to have_key :address
      expect(hash_object[:attributes]).to have_key :place_id
    end
  end
end
