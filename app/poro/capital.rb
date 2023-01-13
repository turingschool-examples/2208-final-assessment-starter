class Capital
  attr_reader :city, :country, :country_code, :latitude, :longitude

  def initialize(capital_info, country)
    @city = capital_info[:name]
    @country = country.capitalize
    @country_code = capital_info[:country]
    @latitude = capital_info[:latitude]
    @longitude = capital_info[:longitude]
  end
end
