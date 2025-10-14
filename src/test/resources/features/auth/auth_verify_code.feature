Feature: Verificación de código de usuario

  @verify
  Scenario: Verificar código de registro
    Given url 'https://backsst.agenciaidp.com/api/v1/auth/verify-code'
    And header Content-Type = 'application/json'
    And request
    """
    {
      "email": "pruebaaut1@yopmail.com",
      "verificationCode": "796429"
    }
    """
    When method POST
    Then status 201
    * print '✅ Usuario verificado correctamente:', response
