class GeoapifyService 
    def self.get_tourist_sights(capital)
        lon = capital.longitude
        lat = capital.latitude
        response = conn.get("/v2/places?categories=tourism&filter=circle:#{lon},#{lat},20000")
        JSON.parse(response.body,symbolize_names: true)
    end 

    def self.conn 
        Faraday.new("https://api.geoapify.com") do |f|
            f.headers["apiKey"] = ENV['geoapify_key']
        end 
    end 
end