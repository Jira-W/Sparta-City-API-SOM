# Sparta-City-API-SOM
Testing of REST API, Openweathermap, base on Service Object Mode. Testing of single city and mutiple city request.

### Installing

The test will require Ruby RSpec, HTTParty, and Json gem which can be install as follow:

```
~ bundle install
```


## Running the tests

### The test is used to test the data received from Openweathermap API is of the right format, which includes data types, data length, and values.
###### The test context is divided into two parts. The first part is for single city name request which includes 24 test cases. While the latter is for multiple cities request and currently with two test cases with more to be added later. For both of the test contexts a random city is generated or cities for multiple city for each request being parse to service model.

test can be run from root of the programme directory 'Sparta-City-API-SOM':

```
~ rspec
```


## Built With

* [RSpec] - The Ruby test framework used


## Authors

* **Jiraphong W**
