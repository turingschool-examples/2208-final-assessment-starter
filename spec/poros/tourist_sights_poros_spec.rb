require 'rails_helper'

RSpec.describe TouristSights do
  describe 'initialize' do
    it 'exists' do
    attributes = {
        name: "Paris",
        formatted_address: "121354 Remond Paris",
        place_id: "!@#^*@#^*(@*)&"
    }
    tourist_sight = TouristSights.new(attributes)
    expect(tourist_sight).to be_instance_of(TouristSights)
  end
 end
end