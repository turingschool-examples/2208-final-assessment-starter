class SightService
    def self.conn
        Faraday.new("https://api.geoapify.com") do |f|
            f.params['apiKey'] = ENV['geo_key']
        end
    end

    def self.show_me(country, map)
        response = conn.get("/v2/places?categories=tourism.sights&filter=circle:#{map},20000&country=#{country}&limit=20")

        JSON.parse(response.body,symbolize_names: true)
    end

end

