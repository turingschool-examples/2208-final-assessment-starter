require 'rails_helper'

RSpec.describe Capital do
    it "exists and has attributes" do
        sight_info ={
            :name=>"France",
            :address=>"Maison de Chateaubriand 87 Rue de Chateaubriand, 92290 Châtenay-Malabry, France",
            :place_id=>"515d1f5d62721d024059cf1b831ae7624840f00102f901de515805000000009203174d6169736f6e2064652043686174656175627269616e64"
        }
    end
end