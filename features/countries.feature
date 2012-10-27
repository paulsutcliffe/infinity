#language: es
Característica: administración los paises

@admin
Escenario: Agregar un país
  Dado que estoy en la página inicial
  Cuando hago click en "Countries"
  Y lleno el formulario con los datos del nuevo país
  Cuando presiono "Save"
  Entonces debería ver "Country created successfully."

@admin
Escenario: Editar un país existente
  Dado que existe el país "Peru"
  Cuando hago click en "Countries"
  Y hago click en "Edit"
  Y lleno el formulario con los datos del nuevo país
  Entonces debería ver "Country updated successfully."

@admin
Escenario: Eliminar un país existente
  Dado que existe el país "Peru"
  Cuando hago click en "Countries"
  Y hago click en "Delete"
  Entonces debería ver "Country deleted successfully."
