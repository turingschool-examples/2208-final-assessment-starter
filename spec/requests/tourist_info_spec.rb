require 'rails_helper'

RSpec.describe 'Get Capital Info' do 

    it 'returns ' do
        get "/api/v1/tourist_sights?country=France"

        expect(response).to be_successful

        info = JSON.parse(response.body,symbolize_names: true)
        binding.pry
    end
end 