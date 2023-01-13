require 'rails_helper'
# hello!

RSpec.describe 'SightService' do
  describe '#tourism_sights' do
    it 'returns tourism sight data' do
      lon = '-87.770231'
      lat = '41.878968'
      sights = SightService.new.tourism_sights(lon, lat)

      expect(sights).to be_a Hash
      expect(sights).to have_key :features

      expect(sights[:features]).to be_an Array
      expect(sights[:features].count).to_not eq(0)

      sights[:features].each do |feature|
        expect(feature).to be_a Hash
        expect(feature).to have_key :properties
        expect(feature[:properties]).to be_a Hash
        expect(feature[:properties]).to have_key :name
        expect(feature[:properties]).to have_key :address_line2
        expect(feature[:properties]).to have_key :place_id
      end
    end
  end
end