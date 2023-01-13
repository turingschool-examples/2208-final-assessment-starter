require 'rails_helper'

RSpec.describe CountryFacade, :vcr do 
    it '.capital_info' do
        capital = CountryFacade.capital_info("Nigeria")
        expect(capital).to be_an_instance_of(Capital)
    end
end
