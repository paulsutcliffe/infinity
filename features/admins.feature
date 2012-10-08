#language: es
Característica: administración de los contenidos de la web

Escenario: Ingresar como administrador
  Dado que existe un administrador
  Y que estoy en la página inicial
  Cuando visito "/admins/ingresar"
  Y lleno el formulario con los datos del administrador
  Cuando presiono "Ingresar"
  Entonces debería ver "Ingreso al sistema con éxito"
