#language: es

Característica: usuarios envian su información en el formulario para postular

Escenario: llenar formulario
  Dado que estoy en la página inicial
  Cuando hago click en "About Us"
  Y hago click en "Work with Us"
  Y hago click en "Submit your information"
  Y lleno "Name" con "David"
  Y lleno "Last Name" con "Heinemeier Hansson"
  Y lleno "Address 1" con "avenida La Mar 123"
  Y lleno "Address 2" con "monterrico 456"
  Y lleno "Department" con "Lima"
  Y lleno "City" con "Lima"
  Y lleno "Zip Code" con "lima18"
  Y en "Country" selecciono "Peru"  
  Y lleno "Phone" con "12345678"
  Cuando presiono "Submit"
  Entonces debería ver "Your application has been sent"


  
