#language: es
Característica: administración de los contenidos de la web

Escenario: Ingresar como administrador
  Dado que existe un administrador
  Y que estoy en la página inicial
  Cuando visito "/admins/sign_in"
  Y lleno el formulario con los datos del administrador
  Cuando presiono "Sign in"
  Entonces debería ver "Signed in successfully."
