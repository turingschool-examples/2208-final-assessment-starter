class TouristSite
  attr_reader :name, :address, :place_id

  def initialize(attributes)
    @name = attributes[:name]
    @address = attributes[:formatted]
    @place_id = attributes[:place_id]
  end
end