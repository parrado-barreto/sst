function fn() {
  var config = {};
  config.baseUrl = 'https://backsst.agenciaidp.com';

  // Login único al inicio (solo se ejecuta una vez)
  var loginResponse = karate.callSingle('classpath:features/auth/login.feature');
  config.accessToken = loginResponse.response.accessToken;

  karate.log('✅ Token cargado correctamente:', config.accessToken);
  return config;
}