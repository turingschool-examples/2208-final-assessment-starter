class TouristSight
  attr_reader :name, :address1, :address2, :place_id

  def initialize(data)
    @name = data[:properties][:name]
    @address1 = data[:properties][:address_line1]
    @address2 = data[:properties][:address_line2]
    @place_id = data[:properties][:place_id]
  end
end