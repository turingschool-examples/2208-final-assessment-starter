require 'rails_helper'

RSpec.describe CountryFacade do 
    it '.capital_info' do 
        capital = CountryFacade.capital_info("Nigeria")
        expect(capital).to be_an_instance_of(Capital)
    end 

    it 'return nil if the country is not found' do
      capital = CountryFacade.capital_info('Aslandia')
      expect(capital).to eq(nil)
    end
end 