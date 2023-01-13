class GeoapifyService 
    def self.get_tourist_sights(longitude, latitude)
        response = conn.get("/v2/places?categories=tourism&filter=circle:#{longitude},#{latitude},20000")
        JSON.parse(response.body,symbolize_names: true)
    end 

    def self.conn
        Faraday.new("https://api.geoapify.com") do |f|
            f.params["apiKey"] = ENV['geoapify_key']
        end 
    end 
end