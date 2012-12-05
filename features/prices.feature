#language: es
Característica: administración los precios de cada viaje

Antecedentes: Viajes pertenecen a Paises
  Dado que existe el viaje "Machu Picchu" del país "Peru"
  Cuando estoy en la página del viaje "Machu Picchu"
  Cuando hago click en "Precios"

@admin
Escenario: Agregar un precio
  Y hago click en "New Price"
  Y lleno el formulario para el precio de "Nov 25" a "Dec 07"
  Cuando presiono "Save"
  Entonces debería ver "Price created successfully."
  Y debería ver el precio de "Nov 25" a "Dec 07"

@admin
Escenario: Editar un precio existente
  Dado que existe el precio de "Nov 25" a "Dec 07" del viaje "Machu Picchu"
  Cuando hago click en "Edit"
  Y lleno el formulario para el precio de "Dec 09" a "Dec 21"
  Entonces debería ver "Price updated successfully."
  Y debería ver el precio de "Dec 09" a "Dec 21"

@admin
Escenario: Eliminar un precio existente
  Dado que existe el precio de "Nov 25" a "Dec 07" del viaje "Machu Picchu"
  Cuando hago click en "Delete"
  Entonces debería ver "Price deleted successfully."
  Y no debería ver el precio de "Nov 25" a "Dec 07"

Escenario: El usuario puede ver los precios
  Dado que existe el precio de "Nov 25" a "Dec 07" del viaje "Machu Picchu"
  Entonces debería ver el precio de "Nov 25" a "Dec 07"
  Y no debería ver los controles de administración


