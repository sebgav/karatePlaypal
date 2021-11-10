Feature: Orders Creations
  Background:
  * def tokenResponse = call read('classpath:features/paypal/auth/token.feature')
  * def token = tokenResponse.token
  * url 'https://api-m.sandbox.paypal.com'
  * header Content-Type = 'application/json'
  * header Authorization = 'Bearer '+token


  Scenario: succesfull creations orders
    Given path '/v2/checkout/orders'
    And request read('bodyAnother.json')
    When method POST
    Then status 201
    And print 'Response:' , response