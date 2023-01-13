class TouristSight
  attr_reader :name, :formatted_address, :place_id

  def initialize(data)
    @name = data[:properties][:name]
    @formatted_address = data[:properties][:formatted]
    @place_id = data[:properties][:place_id]
  end
end