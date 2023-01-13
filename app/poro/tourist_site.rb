class TouristSite
  attr_reader :name, :formatted_address, :place_id

  def initialize(attributes)
    @name = attributes[:name]
    @formatted_address = attributes[:formatted]
    @place_id = attributes[:place_id]
  end
end