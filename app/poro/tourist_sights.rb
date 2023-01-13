class TouristSights
  attr_reader :name,
              :address,
              :place_id
  def initialize(input)
    @name = get_name(input)
    @address = get_address(input)
    @place_id = get_place_id(input)
  end

  def get_name(input)
    input[:properties][:name]
  end

  def get_address(input)
    input[:properties][:formatted]
    
  end

  def get_place_id(input)
    input[:properties][:place_id]
    
  end

  # def get_name(input)
  #   input[:features].map do |feat|
  #     feat[:properties][:name]
  #   end
  # end

  # def get_address(input)
  #   input[:features].map do |feat|
  #     feat[:properties][:formatted]
  #   end
  # end

  # def get_place_id(input)
  #   input[:features].map do |feat|
  #     feat[:properties][:place_id]
  #   end
  # end
end