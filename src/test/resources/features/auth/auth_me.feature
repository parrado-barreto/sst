Feature: Obtener información del usuario autenticado (Auth Me)
  @auth
  Background:
    * url config.baseUrl + '/api/v1/auth/me'
    * header Accept = '*/*'
    * header Connection = 'keep-alive'

  Scenario: Obtener datos del usuario con token de profesional
    * header Authorization = 'Bearer ' + config.accessToken
    When method GET
    Then status 200
    * print '✅ Respuesta del profesional:', response
    * match response contains { status: '#present' }

  Scenario: Obtener datos del usuario con token de empresa
    * header Authorization = 'Bearer ' + config.empresaToken
    When method GET
    Then status 200
    * print '🏢 Respuesta de la empresa:', response
    * match response contains { status: '#present' }
