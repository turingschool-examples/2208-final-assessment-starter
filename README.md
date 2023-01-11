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
2. Run `rails s`, and use postman to try out the endpoint `GET /api/v1/capital_info/:country`. For example, `/api/v1/capital_info/France` or `/api/v1/capital_info/Nigeria`. You should see a json response that looks something like this: 
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

You'll be using the [Places API](https://apidocs.geoapify.com/docs/places/#about). **You'll need an API key for this service.** Please read the following instructions carefully:

1. Visit the [Places API](https://apidocs.geoapify.com/docs/places/#about) to see the capabilities of the API to consume.
2. Follow [these](https://apidocs.geoapify.com/docs/places/#about:~:text=Authentication%20and%20API%20key) directions to set up an account and get your API key set up. 
3. We suggest that you set up Postman to call several different endpoints. Experiment with different parameters so you can see what they do, how you could use things to filter data, etc.
