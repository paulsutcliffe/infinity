# language: es
Característica: administración de los hoteles disponibles de acuerdo al día

Antecedentes: Días pertenecen a Viajes
  Dado que existe el día "1" del viaje a "Machu Picchu"
  Cuando estoy en la página del día "1"
  Cuando hago click en "Hotel"

@admin
Escenario: Agregar un hotel
  Y hago click en "New Hotel"
  Y lleno "nombre" con "Los Delfines"
  Y presiono "Save"
  Entonces debería ver "Hotel created successfully."
  Y debería ver hotel "Los Delfines"

@admin
Escenario: Editar un hotel
  Dado que existe el hotel "Los Delfines" del día "1"
  Y hago click en "Edit"
  Y lleno "nombre" con "Sheraton"
  Y presiono "Save"
  Entonces debería ver "Hotel updated successfully."
  Y debería ver hotel "Sheraton"

@admin
Escenario: Eliminar un hotel existente
  Dado que existe el hotel "Los Delfines" del día "1"
  Y hago click en "Delete"
  Entonces debería ver "Hotel deleted successfully."

Escenario: El usuario puede ver los hoteles
  Dado que existe el hotel "Los Delfines" del día "1"
  Entonces debería ver hotel "Los Delfines"
  Y no debería ver los controles de administración
