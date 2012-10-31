#language: es
Característica: administración de las fotos de los paises

Antecedentes: Fotos pertenecen a paises y paises pertencen a un destino
  Dado que existe el país "Peru" del destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "South America"
  Y hago click en "Peru"

@admin
Escenario: Agregar una foto
  Cuando hago click en "New Picture"
  Y uso la imagen "country_picture.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Picture created successfully."
  Y debería ver "country_picture.jpg"

@admin
Escenario: Eliminar una foto existente
  Cuando existe la imagen de país "country_picture.jpg"
  Y hago click en "Delete"
  Entonces debería ver "Picture deleted successfully."
  Y no debería ver "country_picture.jpg"

Escenario: El usuario puede ver las fotos de los países
  Cuando existe la imagen de país "country_picture.jpg"
  Entonces debería ver "country_picture.jpg"
  Y no debería ver los controles de administración
