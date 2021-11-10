Feature: Orders Creations
  Background:
  * url 'https://api-m.sandbox.paypal.com'
  * header Content-Type = 'application/json'
  * header Authorization = 'Bearer A21AALRhNPdiU2chLfUxZYVvzPPn9W9-lGRkCWPonwlqqvs4067q72t9ejE9jHPH3lE8zRx4qBXR4DahwyTGqB8OA7j9xqZOw'


  Scenario: succesfull creations orders
    Given path '/v2/checkout/orders'
    And request read('body.json')
    When method POST
    Then status 201
    And print 'Response:' , response