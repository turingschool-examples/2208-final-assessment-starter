require 'rails_helper'

RSpec.describe TouristSights do
  describe 'initialize' do
    it 'exists' do
    attributes = {
        name: "",
        formatted_address: "",
        place_id: ""
    }
    tourist_sight = TouristSights.new(attributes)
    expect(tourist_sight).to be_instance_of(TouristSights)
  end
 end
end