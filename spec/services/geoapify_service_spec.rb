RSpec.describe GeoapifyService do
  describe 'gets geoapify API' do
    it 'retrieves api data' do
      expect(GeoapifyService.new).to be_a(GeoapifyService)
    end

    it 'has sight info for coordinates' do
      response = GeoapifyService.tourist_sight(48.8566, 2.3522)

      expect(response).to be_a(Hash)
      expect(response).to have_key(:features)
      expect(response[:features]).to be_a(Array)
     
      response[:features].each do |f|
        expect(f).to be_a(Hash)
        expect(f).to have_key(:properties)
        expect(f[:properties]).to be_a(Hash)
        expect(f[:properties]).to have_key(:name)
        expect(f[:properties]).to have_key(:formatted)
        expect(f[:properties]).to have_key(:place_id)
        expect(f[:properties][:name]).to be_a(String)
        expect(f[:properties][:formatted]).to be_a(String)
        expect(f[:properties][:place_id]).to be_a(String)
      end
    end
  end
end