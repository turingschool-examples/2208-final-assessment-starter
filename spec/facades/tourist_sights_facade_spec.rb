require 'rails_helper'

RSpec.describe TouristSightsFacade do
  describe '.class methods' do
    describe '.tourist_sights' do
      it 'returns a collection of tourist sights based on a country' do
        sights = TouristSightsFacade.tourist_sights('France')
        expect(sights).to be_an Array
        expect(sights[0]).to be_an_instance_of TouristSight
      end
    end
  end
end