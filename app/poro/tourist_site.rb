class TouristSite
  attr_reader :name,
              :address,
              :place_id

  def initialize(data)
    @name = data[:name]
    @address = data[:address_line2]
    @place_id = data[:place_id]
  end
end
