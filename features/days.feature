#language: es
Característica: administración los días del itinerario de cada viaje

Antecedentes: Viajes pertenecen a Paises
  Dado que existe el viaje "Machu Picchu" del país "Peru"
  Cuando estoy en la página del viaje "Machu Picchu"
  Cuando hago click en "Itinerary"

@admin
Escenario: Agregar un día
  Y hago click en "New Day"
  Y lleno el formulario para el día "1"
  Cuando presiono "Save"
  Entonces debería ver "Day created successfully."
  Y debería ver el día "1"

@admin
Escenario: Editar un día existente
  Dado que existe el día "1" del viaje "Machu Picchu"
  Cuando hago click en "Edit"
  Y lleno el formulario para el día "2"
  Entonces debería ver "Day updated successfully."
  Y debería ver el día "2"

@admin
Escenario: Eliminar un día existente
  Dado que existe el día "1" del viaje "Machu Picchu"
  Cuando hago click en "Delete"
  Entonces debería ver "Day deleted successfully."
  Y no debería ver el día "1"

Escenario: El usuario puede ver los días
  Dado que existe el día "1" del viaje "Machu Picchu"
  Entonces debería ver el día "1"
  Y no debería ver los controles de administración

