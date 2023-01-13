require 'rails_helper'

RSpec.describe TouristSights do 
  it 'exists' do
    attributes = File.read("spec/fixtures/france.json")
    parsed = JSON.parse(attributes, symbolize_names: true)
    sight = TouristSights.new(parsed)
    # require 'pry'; binding.pry
    # expect(sight).to be_a TouristSight
    expect(sight.name.first).to eq("Maison de Chateaubriand")
    expect(sight.address.first).to eq("Maison de Chateaubriand, 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France")
    expect(sight.place_id.first).to eq("515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64")
  end
end