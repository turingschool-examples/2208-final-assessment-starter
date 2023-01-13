require 'rails_helper'

RSpec.describe TouristSightsFacade do
  describe '.class methods' do
    describe '.tourist_sights' do
      it 'returns a collection of tourist sights based on a country' do
        VCR.insert_cassette 'tourist_sights_facade'
        sights = TouristSightsFacade.tourist_sights('France')
        expect(sights).to be_an Array
        expect(sights[0]).to be_an_instance_of TouristSight
        VCR.eject_cassette
      end
    end
  end
end