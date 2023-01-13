require 'rails_helper'

RSpec.describe GeoapifyFacade do
  describe 'gets endpoints from geoapify' do
    it 'instantiates' do
      expect(GeoapifyFacade.new).to be_a(GeoapifyFacade)
    end

    it 'gets tourist sights info' do
      sights = GeoapifyFacade.tourist_info(48.8566, 2.3522)
      # require 'pry'; binding.pry

      expect(sights).to be_a(Array)
      sights.each do |sight|
        expect(sight).to be_a(TouristSight)
        expect(sight.name).to be_a(String)
        expect(sight.address).to be_a(String)
        expect(sight.place_id).to be_a(String)
      end
    end

  end
end