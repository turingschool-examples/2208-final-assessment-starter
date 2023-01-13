require 'rails_helper'

RSpec.describe CountryFacade do 
    it '.capital_info' do 
        capital = CountryFacade.capital_info("Nigeria")
        expect(capital).to be_an_instance_of(Capital)
    end

    it '.tourist_sights' do
        sights = CountryFacade.tourist_sights("France")
        expect(sights).to be_an_instance_of(Sight)
    end
end 