Feature: Registro de usuario en la API

  #@auth
  Scenario: Registrar un nuevo usuario tipo professional
    Given url 'https://backsst.agenciaidp.com/api/v1/auth/register'
    And header Content-Type = 'application/json'
    And request
    """
    {
    "name": "prueba",
    "lastName": "prueba2",
    "email": "prueba2@yopmail.com",
    "password": "Nose1440",
    "phoneNumber": "312412174",
    "role": "professional",
    "country": "colombia",
    "gender": "male"
    }

    """
    When method POST
    Then status 201
    * print '✅ Usuario registrado correctamente:', response
