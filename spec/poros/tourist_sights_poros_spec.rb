require 'rails_helper'

RSpec.describe TouristSights do
  describe 'initialize' do
    xit 'exists' do
    attributes = {
        name: "",
        formatted_address: "",
        place_id: ""
    }
    tourist_sight = TouristSight.new(attributes)
    expect(tourist_sight).to be_instance_of(TouristSights)
  end
 end
end