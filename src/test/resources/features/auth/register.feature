@auth
Feature: Registro de usuario en la API
  Scenario: Registrar un nuevo usuario tipo professional
    Given url baseUrl + '/auth/register'
    And header Content-Type = 'application/json'
    And request
    """
    {
      "name": "prueba",
      "lastName": "prueba3",
      "email": "prueba3@yopmail.com",
      "password": "Nose1440",
      "phoneNumber": "312412164",
      "role": "professional",
      "country": "colombia",
      "gender": "male"
    }
    """
    When method POST
    Then status 201
    * print '✅ Usuario registrado correctamente:', response
