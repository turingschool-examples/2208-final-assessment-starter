require 'rails_helper'

RSpec.describe CountryFacade do 
    it '.capital_info', :vcr do 
        capital = CountryFacade.capital_info("Nigeria")
        expect(capital).to be_an_instance_of(Capital)
    end 

    it 'capital info returns nil if state is invalid', :vcr do 
        capital = CountryFacade.capital_info("dog")
        expect(capital).to eq(nil) 
      end
end 