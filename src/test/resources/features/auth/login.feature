Feature: Login exitoso
  @auth
  Scenario: Login correcto con credenciales válidas
    Given url 'https://backsst.agenciaidp.com/api/v1/auth/login'
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
