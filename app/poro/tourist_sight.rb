class TouristSight
  attr_reader :name, :address, :place_id 

  def initialize(sight_info)
      @name = sight_info[:name]
      @address = sight_info[:address]
      @place_id = sight_info[:place_id]
  end 
end 