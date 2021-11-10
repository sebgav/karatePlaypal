Feature: Token request
  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * header Content-Type = 'application/x-www-form-urlencoded'
    * header Authorization = 'Basic QVZydHRWX01ETWRaUkMxbkswbVRtejdwZ2tQRV91U2RqTThTR1hJWUJkSVNfUUdKMUdSZlpzRndZQU9PVkg1ckI3RHFhZU9sb1pYaU03OWQ6RUJHUl9USHV0OWxaYjFzT2NLMVltdEw4UGI5QV9EUW84MVpsNXdmaGEtT1hGRVU5dXpiN1BrNDRfMEhpR1dLbWE2OUNiYmNzN3VlMkl4NDM='

    Scenario: succesful token creation
      Given path '/v1/oauth2/token'
      And request 'grant_type=client_credentials'
      When method POST
      Then status 200
      * print 'Response:' , response
      * def token = response.access_token
