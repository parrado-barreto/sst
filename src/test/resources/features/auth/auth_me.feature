@auth
Feature: Consultar información del usuario autenticado
  Scenario: Obtener datos del usuario autenticado
    Given url baseUrl + '/auth/me'
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200
    * print '✅ Usuario autenticado:', response
