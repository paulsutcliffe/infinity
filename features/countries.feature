#language: es
@javascript
Característica: administración los paises

Antecedentes: Paises pertencen a un Destino
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "South America"

@admin
Escenario: Agregar un país
  Cuando hago click en "New Country"
  Y lleno el formulario para el país "Peru"
  Cuando presiono "Save"
  Entonces debería ver "Country created successfully."
  Y debería ver "Peru"

@admin 
Escenario: Editar un país existente
  Dado que existe el país "Peru" del destino "South America"
  Cuando hago click en "Edit"
  Y lleno el formulario para el país "Colombia"
  Entonces debería ver "Country updated successfully."
  Y debería ver "Colombia"

@admin
Escenario: Eliminar un país existente
  Dado que existe el país "Peru" del destino "South America"
  Cuando hago click en "Delete"
  Entonces debería ver "Country deleted successfully."
  Y no debería ver "Peru"

Escenario: El usuario puede ver los países
  Dado que existe el país "Peru" del destino "South America"
  Entonces debería ver "Peru"
  Y no debería ver los controles de administración
