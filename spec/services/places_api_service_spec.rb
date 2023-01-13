require 'rails_helper'

RSpec.describe PlacesApiService do 
  describe 'class methods' do 
    describe '#tourist_sights' do 
      before(:each) do 
        @city = CountryFacade.capital_info('France')
      end

      it 'returns info on tourist sights using lat/long data' do 
        data = PlacesApiService.tourist_sights(@city)
        sight = data[:features][0]

        expect(data[:features]).to be_a Array
        expect(sight[:properties]).to have_key :name
        expect(sight[:properties]).to have_key :formatted #address
        expect(sight[:properties]).to have_key :place_id
      end
    end
  end
end