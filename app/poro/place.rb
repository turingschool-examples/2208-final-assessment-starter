class Place
  attr_reader :type, :attributes

  def initialize(place_info)
    @type = 'tourist_sight'
    @attributes = {}
    @attributes[:name] = place_info[:name]
    @attributes[:address] = place_info[:address_line2]
    @attributes[:place_id] = place_info[:place_id]
  end
end
