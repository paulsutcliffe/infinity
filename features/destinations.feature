#language: es
Característica: administración los destinos

@admin
Escenario: Agregar un destino
  Dado que estoy en la página inicial
  Cuando hago click en "Destinations"
  Y hago click en "New Destination"
  Y lleno el formulario para el destino "South America"
  Cuando presiono "Save"
  Entonces debería ver "Destination was successfully created."
  Y debería ver el destino "South America"

@admin
Escenario: Editar un destino existente
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations" en el menu
  Y hago click en "Edit"
  Y lleno el formulario para el destino "Africa"
  Cuando presiono "Save"
  Entonces debería ver "Destination was successfully updated."
  Y debería ver el destino "Africa"

@admin
Escenario: Eliminar un destino existente
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "Delete"
  Entonces debería ver "Destination was successfully destroyed."
  Y no debería ver el destino "South America"

@javascript
Escenario: El usuario puede ver los destinos
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "South America"
  Entonces debería ver el destino "South America"
  Y no debería ver los controles de administración
