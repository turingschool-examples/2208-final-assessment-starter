require 'rails_helper'

RSpec.describe SightService do
    it ".show_me" do
        map = "2.3200410217200766,48.8588897"
        response = SightService.show_me("France", map)
        expect(response).to be_a(Hash)
        expect(response[:features][0]).to have_key(:properties)
    end
end