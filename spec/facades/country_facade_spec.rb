require 'rails_helper'

RSpec.describe CountryFacade do 
    it '.capital_info' do 
        VCR.use_cassette('facade_test_capital_info') do
            capital = CountryFacade.capital_info("Nigeria")
            expect(capital).to be_an_instance_of(Capital)
        end
    end 
end 