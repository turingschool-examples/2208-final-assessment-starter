class TouristSight
  attr_reader :name, :address, :place_id

  def initialize(place_info)
    @name = place_info[:name]
    @address = "#{place_info[:address_line1]}, #{place_info[:address_line2]}"
    @place_id = place_info[:place_id]
  end
end
