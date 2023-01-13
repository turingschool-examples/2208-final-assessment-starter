class CountriesNowService 
    def self.get_capital_city(country)
        response = conn.get("/api/v0.1/countries/capital/q?country=#{country}") 
        JSON.parse(response.body,symbolize_names: true)
    end 
    
     def self.get_country(country)
        response = conn.get("/api/v0.1/countries/q?country=#{country}") 
        JSON.parse(response.body,symbolize_names: true)
         binding.pry
    end

    def self.conn 
        Faraday.new("https://countriesnow.space")
    end 
end 