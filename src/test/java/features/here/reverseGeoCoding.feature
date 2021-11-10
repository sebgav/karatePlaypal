Feature: Reverse Geocoging Coordinates

  Background:
    * url 'https://revgeocode.search.hereapi.com'
    * header Authorization = 'Bearer eyJhbGciOiJSUzUxMiIsImN0eSI6IkpXVCIsImlzcyI6IkhFUkUiLCJhaWQiOiJGczFXNWl4SDlTNkV0dEc1VnA1biIsImlhdCI6MTYzNjQ4MjAzMywiZXhwIjoxNjM2NTY4NDMzLCJraWQiOiJqMSJ9.ZXlKaGJHY2lPaUprYVhJaUxDSmxibU1pT2lKQk1qVTJRMEpETFVoVE5URXlJbjAuLldhZTU2eEtPY2RzOEtBb0E0THlVU2cuZ0FPVHpCNTRMUXl1Vm9EQ2pJUnVWZ1djVC0yMUJSSEt5WXpLby1EbGVYTzRuTG9fcVh5eExRQ3NZcnlIaFRxQzFFS3JWSlppcHJwcjJCVzRta2REbE9yT0RiTTJtZUFOTEVFdTlRa005UHktUmpObDJWeVJ4QkxFV3hkNVNTX05rdkl0Q29haHYxX3pPdnloS0dQcVNBLkd6anpQT0VJOHI4Ym9uNC1fOW9ZekNhU0Z1THF5WFF0WWZaWEZRY2dzSVk.KfHEkv0qGWFL_CaQzIcB49gISU1R-AAuwD3YYHSO9Oo5ZN7vlADXd-5ngOKPVKlrlPK7K-BSHdHdW4ScBtH89Yiz47nXIBkQfHlWJEammtvCiMelmn-DbHlt0fLsBgND5CSAEwEdgydKHMj1RYGALw0p9gZYenYeHWDvjWuhG0OGQ68O3XDk1YKKHZqz_KrzcYgthi-RCl-j8tRaUop7EWxJGM6hD78nOZrDt2N42Yfz41wV0fg8Qxw8eIU0H5eYzb03BAA1hZzo1tO6L7Ovg6MFzTU78K8dsQTHvtQ5VijjeqnVtZZLIyZDTmybnohnCIx-Y-VsSzlA3MtIRZh1JQ'

    Scenario: Succes response
      Given path '/v1/revgeocode'
      And param at = '6.156372333017463,-75.61109835766987'
      And param lang = 'en-US'
      When method GET
      Then status 200
      * print 'Response:' , response