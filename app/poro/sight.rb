class Sight
  attr_reader :name,
              :address_line2,
              :place_id

  def initialize(data)
    @name = data[:name]
    @address_line2 = data[:address_line2]
    @place_id = data[:place_id]
  end
end
