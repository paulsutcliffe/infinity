#language: es
Característica: usuarios

Escenario: Registrarse como un usuario
  Dado que estoy en la página inicial
  Cuando hago click en "Register"
  Y lleno "Email" con "paul@kosmyka.com"
  Y lleno "user[password]" con "hackme"
  Y lleno "Password confirmation" con "hackme"
  Y lleno "Name" con "Paul"
  Y lleno "Last name" con "Sutcliffe"
  Y lleno "Phone" con "998355383"
  Y en "Are you a travel agent?" elijo "No"
  Y lleno "Address1" con "Francisco de Zela 2579 A1"
  Y lleno "State" con "Lima"
  Y lleno "City" con "Lima"
  Y lleno "Zip Code" con "Lima14"
  Y en "Country" selecciono "Peru"
  Cuando presiono "Sign up"
  Entonces debería ver "Welcome! You have signed up successfully."
