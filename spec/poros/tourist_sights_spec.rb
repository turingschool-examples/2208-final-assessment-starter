require 'rails_helper'

RSpec.describe TouristSights do 
  it 'exists' do
    attributes = File.read("spec/fixtures/france.json")
    parsed = JSON.parse(attributes, symbolize_names: true)
    properties = parsed[:features].first

    sight = TouristSights.new(properties)

    expect(sight.name).to eq(properties[:properties][:name])
    expect(sight.address).to eq(properties[:properties][:formatted])
    expect(sight.place_id).to eq(properties[:properties][:place_id])
  end
end