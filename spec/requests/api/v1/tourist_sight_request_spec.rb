require 'rails_helper'

RSpec.describe 'tourist sight api' do 
  before :each do 
    country = 'France'
    get "/api/v1/tourist_sights?country=#{country}"

    @sights_list = JSON.parse(response.body, symbolize_names: true)
  end

  it 'response includes name, address, and place_id' do 
    expect(response).to be_successful
    expect(@sights_list).to be_a(Hash)
  end

  it 'sight includes name, address, and id' do
      sights = @sights_list[:data]

      sights.each do |sight|
        expect(sight).to have_key :id
        expect(sight).to have_key :type
        expect(sight).to have_key :attributes
        expect(sight[:id]).to eq('null')
        expect(sight[:type]).to eq('tourist_sight')
        expect(sight[:attributes]).to be_a Hash
        expect(sight[:attributes]).to have_key :name
        expect(sight[:attributes]).to have_key :address
        expect(sight[:attributes]).to have_key :place_id
        expect(sight[:attributes][:name]).to be_a String
        expect(sight[:attributes][:address]).to be_a String
        expect(sight[:attributes][:place_id]).to be_a String
      end
    end
end