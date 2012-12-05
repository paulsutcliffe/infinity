# language: es
Característica: administración de las fotos de los hoteles

Antecedentes: fotos pertenecen a hoteles
  Dado que existe el día "1" del viaje a "Machu Picchu"
  Cuando estoy en la página del hotel "Los Delfines"

@admin
Escenario: Agregar una imagen
  Cuando hago click en "New Picture"
  Y uso la imagen "hotel_picture.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Picture created successfully."
  Y debería ver "hotel_picture.jpg"

@admin
Escenario: Editar una imagen
  Cuando que existe la imagen "hotel_picture.jpg"
  Y hago click en "Edit"
  Y uso la imagen "hotel_picture_2.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Picture updated successfully."
  Y debería ver "hotel_picture_2.jpg"

@admin
Escenario: Eliminar una imagen
  Cuando que existe la imagen "hotel_picture.jpg"
  Y hago click en "Delete"
  Entonces debería ver "Picture deleted successfully."
  Y no debería ver "hotel_picture.jpg"

Escenario: El usuario puede ver las fotos de los hoteles
  Dado que existe la imagen "hotel_picture.jpg"
  Entonces debería ver la imagen "hotel_picture.jpg" del día "1"
  Y no debería ver los controles de administración
