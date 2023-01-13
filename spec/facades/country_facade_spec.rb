require 'rails_helper'

RSpec.describe CountryFacade do 
    it '.capital_info' do
        VCR.insert_cassette 'capital_info_facade' 
        capital = CountryFacade.capital_info("Nigeria")
        expect(capital).to be_an_instance_of(Capital)
        VCR.eject_cassette
    end 
end 