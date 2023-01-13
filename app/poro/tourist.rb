class Tourist
  attr_reader :id, :type, :name, :address, :place_id

  def intialize(data)

    @id = data[:id]
    @type = data[:type]
    @name = data[:name]
    @address = data[:formatted]
    @place_id = data[:place_id]

  end
end