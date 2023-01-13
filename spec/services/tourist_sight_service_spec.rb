require 'rails_helper'

RSpec.describe TouristSightService do
  it 'establishes a connection to get tourist sights within given params' do
    sights = TouristSightService.find_sights('circle:2.3200410217200766,48.8588897,20000')

    expect(sights).to be_a(Hash)
  end
end