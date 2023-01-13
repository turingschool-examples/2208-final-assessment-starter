require 'rails_helper'

RSpec.describe 'SightService' do
  describe '#tourism_sights' do
    it 'returns tourism data' do
      sights = SightService.new.tourism_sights

      expect(sights).to be_a Hash
      expect(sights).to have_key :features

      expect(sights[:features]).to be_an Array
      expect(sights[:features].count).to_not eq(0)

      sights[:features].each do |feature|
        expect(feature).to be_a Hash
      end
    end
  end
end