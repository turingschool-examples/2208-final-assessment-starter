require 'rails_helper'

RSpec.describe SightFacade do
    it '.tourist' do
        sight = SightFacade.tourist("France").first
        expect(sight).to be_an_instance_of(Sight)
    end
end