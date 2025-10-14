@auth
Feature: Login exitoso
  Scenario: Login correcto con credenciales válidas
    Given url baseUrl + '/auth/login'
    And request
    """
    {
      "email": "parradocristian07@gmail.com",
      "password": "Nose1440"
    }
    """
    When method POST
    Then status 201
    * def token = response.accessToken
    * print '✅ Token recibido:', token
