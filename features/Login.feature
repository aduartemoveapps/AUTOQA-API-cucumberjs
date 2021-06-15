Feature: Login

  In order to keep Regres api stable
  As a tester
  I want to make sure that everything works as expected

  Scenario: Login Sucess
      Given I make a POST request to /api/login
      And I set body to 
      """
        {
           "email": "eve.holt@reqres.in",
            "password": "cityslicka"
        }
      """
      
     When I receive a response
     When I receive a response
     Then I expect response should have a status 200
      And I expect response should have a json like
      """
       {
          "token": "QpwL5tke4Pnpja7X4"
      }
      """


  Scenario: Login Error
      Given I make a POST request to /api/login
      And I set body to 
      """
        {
           "email": "eve.holt@reqres.in"
        }
      """
      
     When I receive a response
     When I receive a response
     Then I expect response should have a status 400
      And I expect response should have a json like
      """
       {
              "error": "Missing password"
      }
      """
   