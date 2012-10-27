#language: es
Característica: usuarios

Escenario: Registrarse como un usuario
  Dado que estoy en la página inicial
  Cuando hago click en "Sign Up"
  Y lleno "Email" con "paul@kosmyka.com"
  Y lleno "Password" con "hackme"
  Y lleno "Confirm password" con "hackme"
  Y lleno "Nombre" con "Paul"
  Y lleno "Apellido" con "Sutcliffe"
  Y lleno "Phone" con "998355383"
  Y en "Are you a travel agent" elijo "No"
  Y lleno "Address" con "Francisco de Zela 2579 A1"
  Y lleno "State" con "Lima"
  Y lleno "City" con "Lima"
  Y lleno "Zip Code" con "Lima14"
  Y en "Country" selecciono "Peru"
  Cuando presiono "Sign Up"
  Entonces debería ver "Welcome! You have signed up successfully."
