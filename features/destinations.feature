#language: es
Característica: administración los destinos

@admin
Escenario: Agregar un destino
  Dado que estoy en la página inicial
  Cuando hago click en "Destinations"
  Y lleno el formulario para el destino "South America"
  Cuando presiono "Save"
  Entonces debería ver "Destination created successfully."
  Y debería ver "South America"

@admin
Escenario: Editar un destino existente
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "Edit"
  Y lleno el formulario para el destino "Africa"
  Entonces debería ver "Destination updated successfully."
  Y debería ver "Africa"

@admin
Escenario: Eliminar un destino existente
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "Delete"
  Entonces debería ver "Destination deleted successfully."
  Y no debería ver "South America"

Escenario: El usuario puede ver los destinos
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations"
  Entonces debería ver "South America"
  Y no debería ver los controles de administración
