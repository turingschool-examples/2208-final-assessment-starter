require 'rails_helper'

RSpec.describe TouristSightsFacade do 
    it '.capital_info' do 
        sights = TouristSightsFacade.sights("Nigeria")

       
        expect(sights).to be_a(Array)
    end 
end 