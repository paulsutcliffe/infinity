#language: es
Característica: administración los extensiones de cada viaje

Antecedentes: Viajes pertenecen a Paises
  Dado que existe el viaje "Machu Picchu" del país "Peru"
  Cuando estoy en la página del viaje "Machu Picchu"
  Cuando hago click en "Extensions"

@admin
Escenario: Agregar un extensión
  Y hago click en "New Extension"
  Y lleno el formulario para el extensión ""
  Cuando presiono "Save"
  Entonces debería ver "Extension created successfully."
  Y debería ver el extensión ""

@admin
Escenario: Editar un extensión existente
  Dado que existe el extensión "" del viaje "Machu Picchu"
  Cuando hago click en "Edit"
  Y lleno el formulario para el extensión de ""
  Entonces debería ver "Extension updated successfully."
  Y debería ver el extensión ""

@admin
Escenario: Eliminar un extensión existente
  Dado que existe el extensión "" del viaje "Machu Picchu"
  Cuando hago click en "Delete"
  Entonces debería ver "Extension deleted successfully."
  Y no debería ver el extensión ""

Escenario: El usuario puede ver los extensiones
  Dado que existe el extensión "" del viaje "Machu Picchu"
  Entonces debería ver el extensión ""
  Y no debería ver los controles de administración
