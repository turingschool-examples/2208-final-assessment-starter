# Final Assessment 

## Set Up 

You will need to sign up for an api key for the [Geocoding Service](https://api-ninjas.com/api/geocoding).

To get your repo set up, please do the following: 
1. Fork and clone this repository onto your local machine
2. `cd final_assessment_starter_2208`
3. `bundle install`
4. `rails db:{create,migrate}`
5. `bundle exec figaro install`
6. In your `application.yml`, assign your geocoding api key with the variable `api-ninja-key`

## Make sure it's working locally: 
1. Run `bundle exec rspec`. You should have 5 passing tests. 
2. Run `rails s`, and use postman to try out the endpoint `GET /api/v1/capital_info` for a country that you must provide in the parameters. For example, `/api/v1/capital_info?country=france` or `/api/v1/capital_info?country=nigeria`. You should see a json response that looks something like this: 
    ```json
        {
        "data": {
            "id": null,
            "type": "capital",
            "attributes": {
                "city": "Abuja",
                "country": "Nigeria",
                "country_code": "NG",
                "latitude": 9.0643305,
                "longitude": 7.4892974
            }
        }
    }
    ```

## Get Prepped for the New API 

In tomorrow's assessment, you'll be using the [Places API](https://apidocs.geoapify.com/docs/places/#about). **You'll need an API key for this service.** Please read the following instructions carefully:

1. Visit the [Places API](https://apidocs.geoapify.com/docs/places/#about) to see the capabilities of the API to consume.
2. Follow [these](https://apidocs.geoapify.com/docs/places/#about:~:text=Authentication%20and%20API%20key) directions to set up an account and get your API key set up. 
3. We suggest that you set up Postman to call several different endpoints. Experiment with different parameters so you can see what they do, how you could use things to filter data, etc.

You will be using the Places API to search for tourist sights based on the lat/long of the capital city of the country that is provided by the user. Presume that your user will give a valid country. (you can handle edge cases later)
Your endpoint should follow this format:
GET /api/v1/tourist_sights?country=France
Please do not deviate from the names of the endpoint or query parameters. Be sure it is called "tourist_sights" and "country", respectively.
Your API will return:
- A collection of all found tourist sights within a 20000 meter radius of the capital city.
- Each sight should list its:
  - name
  - formatted address
  - place_id (from the Place API)
Your response should be in the format below:
{
    "data": [
        {
            "id": null,
            "type": "tourist_sight",
            "attributes": {
                "name": "Tour de l'horloge",
                "address": "Tour de l'horloge, Allée de l'Horloge, 23200 Aubusson, France",
                "place_id": "51d28..."
            }
        },
        {
            "id": null,
            "type": "tourist_sight",
            "attributes": {
                "name": "Le Château",
                "address": "Le Château, D 18, 23150 Ahun, France",
                "place_id": "51934..."
            }
        },
        {
            "id": null,
            "type": "tourist_sight",
            "attributes": {
                "name": "Le Chapître",
                "address": "Le Chapître, Rue du Chapitre, 23200 Aubusson, France",
                "place_id": "517182..."
            }
        },
        ...,
        ...,
    ]
}
Notes:
1. You can utilize the existing code to identify the lat/long of the capital city for the provided country.
2. For the Places API, use the circle radius, and the tourism:sights category
3. You are expected to test ALL code that you write.
4. You are expected to commit at least once every 15 minutes or so.
5. Do not make a PR until we tell you to. (around 11:50am MT)
6. Take a deep breath, you've got this.