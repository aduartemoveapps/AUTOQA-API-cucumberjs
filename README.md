# AUTO QA for MS - Pactum + Cucumberjs + Docker
This framework is made to use cucumber gherking with pactums as a api test device.

The tests are design in Gherkin format, for example:
```Gherkin
Feature: Test
Scenario: Get A User
    Given I make a GET request to /api/users/1
     When I receive a response
     Then I expect response should have a status 200
      And I expect response should have a json at data
      """
      {
        "id":1,
        "email":"george.bluth@reqres.in",
        "first_name":"George",
        "last_name":"Bluth",
        "avatar":"https://reqres.in/img/faces/1-image.jpg"
      }
      """
      And I expect response should have a json like
      """
      {
        "data": {
          "id": 1,
          "first_name": "George"
        }
      }
      """
```
There are plenty of pre existents steps for each action, most common are:

 -  I make a **GET/POST/PATCH/DELETE** request to **/path/url** 
 -  I set body to **{{ body }}**

 This is for send the resquest 
 -  I receive a response

Then all the expect results:
 -  I expect response should have a status **200/404/500**
 -  I expect response should have a json at data **{{ body }}**



## How to use it:
You can run it cloning this repo: 

ENVIRONMENT="baseurl of api" yarn test --name "Name Of the feature"

Example:

```
ENVIRONMENT='https://reqres.in' yarn test --name Login
```

Or you can run it directly with the dockerhub image:
```
docker build . -t apitest
docker run -e ENVIRONMENT="https://reqres.in" -e TEST="--name Login" -t  apitest
```


## Test design:
Each test are design in Gherkin format and located in ``/features/`` folder.

If you run with "--name "Name Of the feature"" you will run only this feature, but if you just run "yarn test" you will run all the tests.