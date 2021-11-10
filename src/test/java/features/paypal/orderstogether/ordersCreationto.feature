Feature: Orders Creations Together
  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * path '/v1/oauth2/token'
    * header Content-Type = 'application/x-www-form-urlencoded'
    * header Authorization = 'Basic QVZydHRWX01ETWRaUkMxbkswbVRtejdwZ2tQRV91U2RqTThTR1hJWUJkSVNfUUdKMUdSZlpzRndZQU9PVkg1ckI3RHFhZU9sb1pYaU03OWQ6RUJHUl9USHV0OWxaYjFzT2NLMVltdEw4UGI5QV9EUW84MVpsNXdmaGEtT1hGRVU5dXpiN1BrNDRfMEhpR1dLbWE2OUNiYmNzN3VlMkl4NDM='
    * request 'grant_type=client_credentials'
    * method POST
    * status 200
    * def token = response.access_token
    * print 'Token:' , token

  Scenario: succesfull creations orders
    Given  url 'https://api-m.sandbox.paypal.com'
    And path '/v2/checkout/orders'
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer '+ token
    And request read('bodyto.json')
    When method POST
    Then status 201
    And print 'Response:' , response