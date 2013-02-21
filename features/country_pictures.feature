#language: es
@javascript
Característica: administración de las fotos de los paises

Antecedentes: Fotos pertenecen a paises
  Dado que existe el país "Peru" del destino "South America"

@admin
Escenario: Agregar una foto
  Cuando hago click en "Destinations"
  Y hago click en "South America"
  Y hago click en "Peru"
  Cuando hago click en "Add Country Picture"
  Y uso la imagen "countries/buenos-aires.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Picture created successfully."
  Y debería ver la imagen "buenos-aires.jpg"

@admin
Escenario: Eliminar una foto existente
  Cuando existe la imagen "countries/buenos-aires.jpg" del país "Peru"
  Cuando hago click en "Destinations"
  Y hago click en "South America"
  Y hago click en "Peru"
  Y hago click en "Delete Image"
  Cuando hago click accept en la alerta "Are you sure?"
  Entonces debería ver "Picture deleted successfully."
  Y no debería ver "buenos-aires.jpg"

Escenario: El usuario puede ver las fotos de los países
  Cuando existe la imagen "countries/buenos-aires.jpg" del país "Peru"
  Cuando hago click en "Destinations"
  Y hago click en "South America"
  Y hago click en "Peru"
  Entonces debería ver la imagen "buenos-aires.jpg"
  Y no debería ver los controles de administración
