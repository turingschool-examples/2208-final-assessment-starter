class TouristSightsService
  def self.conn
    Faraday.new("https://api.geoapify.com/v2/") do |faraday|
      faraday.params["apiKey"] = ENV["geo-apify-key"]
      binding.pry
    end
  end

  def self.tourist_sights()
end