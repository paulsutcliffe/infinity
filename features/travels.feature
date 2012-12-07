#language: es
Característica: administración los viajes

Antecedentes: Viajes pertenecen a Paises
  Dado que existe el país "Peru" del destino "South America"
  Cuando estoy en la página del país "Perú"

@admin
Escenario: Agregar un viaje
  Cuando hago click en "New Travel"
  Y lleno el formulario para el viaje "Machu Picchu"
  Cuando presiono "Save"
  Entonces debería ver "Travel created successfully."
  Y debería ver "Machu Picchu"
  Y debería ver la imagen "travel.jpg"

@admin
Escenario: Editar un viaje existente
  Dado que existe el viaje "Machu Picchu" del país "Peru"
  Cuando hago click en "Edit"
  Y lleno el formulario para el viaje "Camino Inca"
  Entonces debería ver "Travel updated successfully."
  Y debería ver "Camino Inca"
  Y debería ver la imagen "travel.jpg"

@admin
Escenario: Eliminar un viaje existente
  Dado que existe el viaje "Machu Picchu" del país "Peru"
  Cuando hago click en "Delete"
  Entonces debería ver "Travel deleted successfully."
  Y no debería ver "Machu Picchu"

Escenario: El usuario puede ver los viajes
  Dado que existe el viaje "Machu Picchu" del país "Peru"
  Entonces debería ver "Machu Picchu"
  Y debería ver la imagen "travel.jpg"
  Y no debería ver los controles de administración

