require 'rails_helper'

RSpec.describe Sight do 
  it 'exists and has attributes' do 
    sight_data = {properties: 
                                {
                                  :name=>"César Franck", 
                                  :formatted=>"César Franck, Rue Casimir Périer, 75007 Paris, France", 
                                  :place_id=>"51055960d9168f024059b9782adcf26d4840f00103f901125fcf470000000092030d43c3a9736172204672616e636b"
                                }
                 }

    sight = Sight.new(sight_data)

    expect(sight).to be_an_instance_of(Sight)
    expect(sight.name).to eq("César Franck")
    expect(sight.address).to eq("César Franck, Rue Casimir Périer, 75007 Paris, France")
    expect(sight.place_id).to eq("51055960d9168f024059b9782adcf26d4840f00103f901125fcf470000000092030d43c3a9736172204672616e636b")
  end 
end 