require 'rails_helper'

RSpec.describe CountriesNowService do 
    it '.capital_info' do
        VCR.insert_cassette 'capital_info_service' 
        response = CountriesNowService.get_capital_city("France")

        expect(response).to be_a Hash
        expect(response[:error]).to eq false
        expect(response[:data]).to have_key :name
        expect(response[:data]).to have_key :capital
        VCR.eject_cassette
    end 
end 