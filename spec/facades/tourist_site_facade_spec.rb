require 'rails_helper'

RSpec.describe TouristSiteFacade do 
  describe 'class methods' do
    describe '#tourist_sites' do
      it 'returns tourist sites for the given location' do
        sites = TouristSiteFacade.tourist_sights(2.3483915, 48.8534951)

        expect(sites).to be_an(Array)
        expect(sites[0]).to be_instance_of(TouristSite)
        expect(sites[0].name).to_not eq(nil)
        expect(sites[0].address).to_not eq(nil)
        expect(sites[0].place_id).to_not eq(nil)
      end
    end 
  end 
end 