Feature: Token request
  Background:
    * url 'https://api-m.sandbox.paypal.com'
    * header Content-Type = 'application/x-www-form-urlencoded'
    * header Authorization = call read('basic-auth.js') {username:'AVrttV_MDMdZRC1nK0mTmz7pgkPE_uSdjM8SGXIYBdIS_QGJ1GRfZsFwYAOOVH5rB7DqaeOloZXiM79d', password:'EBGR_THut9lZb1sOcK1YmtL8Pb9A_DQo81Zl5wfha-OXFEU9uzb7Pk44_0HiGWKma69Cbbcs7ue2Ix43'}


  Scenario: succesful token creation
    Given path '/v1/oauth2/token'
    And request 'grant_type=client_credentials'
    When method POST
    Then status 200
    * print 'Response:' , response
    * def token = response.access_token
