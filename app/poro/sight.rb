class Sight 
  attr_reader :name, 
              :address, 
              :place_id

  def initialize(data)
    @name = data[:name]
    require 'pry'; binding.pry
    @address = 
    @place_id = data[:place_id]
  end
end