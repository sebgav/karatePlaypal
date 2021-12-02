Feature: Token request
  Background:
    * url apiUrl
    * header Content-Type = 'application/x-www-form-urlencoded'
    * header Authorization = call read('basic-auth-Env.js') {username:'#(user)', password:'#(pass)'}


  Scenario: succesful token creation
    Given path '/v1/oauth2/token'
    And request 'grant_type=client_credentials'
    When method POST
    Then status 200
    * print 'Response:' , response
    * def token = response.access_token
