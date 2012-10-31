#language: es
Característica: administración de las fotos de los destinos

Antecedentes: Fotos pertenecen a destinos
  Dado que existe el destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "South America"

@admin
Escenario: Agregar una foto
  Cuando hago click en "New Picture"
  Y uso la imagen "destination_picture.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Picture created successfully."
  Y debería ver "destination_picture.jpg"

@admin
Escenario: Eliminar una foto existente
  Cuando existe la imagen de destino "destination_picture.jpg"
  Y hago click en "Delete"
  Entonces debería ver "Picture deleted successfully."
  Y no debería ver "destination_picture.jpg"

Escenario: El usuario puede ver las fotos de los destinos
  Cuando existe la imagen de destino "destination_picture.jpg"
  Entonces debería ver "destination_picture.jpg"
  Y no debería ver los controles de administración
