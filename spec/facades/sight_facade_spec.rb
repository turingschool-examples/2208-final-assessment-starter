require 'rails_helper'

RSpec.describe 'SightFacade' do
  context '#tourism_sights' do
    it 'returns an Array of Sight objects' do
      capital_info = CountryFacade.capital_info('France')
      sights = SightFacade.new.tourism_sights(capital_info.longitude.to_s, capital_info.latitude.to_s)

      
      expect(sights).to be_an Array
      sights.each do |sight|
        expect(sight).to be_a Sight
      end
    end
  end
end