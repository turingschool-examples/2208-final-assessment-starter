class GeocodingService 
    #This is what brings us the lat and long
    def self.capital_info(capital,country)
        response = conn.get("/v1/geocoding?city=#{capital}&country=#{country}")
        JSON.parse(response.body,symbolize_names: true)
    end 

    def self.conn 
        Faraday.new("https://api.api-ninjas.com") do |f|
            f.headers["X-Api-Key"] = ENV['api-ninja-key']
        end 
    end 
end 