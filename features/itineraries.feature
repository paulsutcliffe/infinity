# language: es
Característica: administración de los itinerarios

Antecedentes: Itinerarios pertenecen a Viajes
  Dado que existe el viaje "Machu Picchu" del país "Perú" del destino "South America"
  Cuando hago click en "Destinations"
  Y hago click en "South America"
  Y hago click en "Peru"
  Y hago click en "Machu Picchu"

@admin
Escenario: Agregar un itinerario
  Cuando hago click en "New Itinenary"
  Y lleno "latitud" con "-12.072308"
  Y lleno "longitud" con "-76.954417"
  Cuando presiono "Save"
  Entonces debería ver "Itinerary created successfully."
  Y debería ver "-12.072308"
  Y debería ver "-76.954417"

@admin
Escenario: Editar un itinerario
  Dado que existe el itinerario "-12.072308" del viaje a "Machu Picchu"
  Cuando hago click en "Edit"
  Y lleno "latitud" con "-14.001122"
  Cuando presiono "Save"
  Entonces debería ver "Itinerary updated successfully."
  Y debería ver "-14.001122"

@admin
Escenario: Eliminar un itinerario
  Dado que existe el itinerario "-12.072308" del viaje a "Machu Picchu"
  Cuando hago click en "Delete"
  Entonces debería ver "Itinerary deleted successfully."
  Y no debería ver "-12.072308"

Escenario: el usuario puede ver los itinerarios
  Dado que existe el itinerario "-12.072308" del viaje a "Machu Picchu"
  Entonces debería ver "-12.072308"
  Y no debería ver los controles de administración

