require 'rails_helper'

RSpec.describe TouristSightFacade do 
  describe 'class methods' do
    describe '#tourist_sights' do
      it 'returns tourist sights for the given location' do
        sights = TouristSightFacade.tourist_sights(2.3483915, 48.8534951)

        expect(sights).to be_an(Array)
        expect(sights[0]).to be_instance_of(TouristSight)
        expect(sights[0].name).to_not eq(nil)
        expect(sights[0].address).to_not eq(nil)
        expect(sights[0].place_id).to_not eq(nil)
      end
    end 
  end 
end 