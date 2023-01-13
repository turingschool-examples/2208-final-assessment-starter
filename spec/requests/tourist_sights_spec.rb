RSpec.describe 'The tourist_sights request' do
  describe 'GET /api/v1/tourist_sights?country=France' do
    it 'returns a collection of all tourist sites within a 20000 meter radius of the capital city' do
      get '/api/v1/tourist_sights?country=France'

      expect(response).to be_successful
      expect(response).to have_http_status(200)

      sites = JSON.parse(response.body, symbolize_names: true)

      expect(sites).to be_a(Hash)

    end
  end
end