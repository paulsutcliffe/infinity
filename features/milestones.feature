# language: es

Característica: administrar la página de hitos

@admin
Escenario: agregar hito
  Dado que estoy en la página inicial
  Cuando hago click en "Milestones"
  Y hago click en "New Milestone"
  Y lleno "title" con "Mejor servicio imposible"
  Y lleno "description" con "Texto que complementa el título Mejor servicio imposible"
  Y lleno "telefono2" con "3334455"
  Y uso la imagen "milestone_picture.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Milestone created successfully."
  Y debería ver "Mejor servicio imposible"
  Y debería ver "Texto que complementa el título Mejor servicio imposible"
  Y debería ver "telefono2"
  Y debería ver la imagen "milestone_picture.jpg"

@admin
Escenario: editar hito
  Dado que existe el hito "Mejor servicio imposible" 
  Y que estoy en la página inicial
  Cuando hago click en "Milestones"
  Y hago click en "Edit"
  Y lleno "title" con "Ninguna otra empresa ofrece mejores servicios."
  Y uso la imagen "milestone_picture2.jpg"
  Y presiono "Save"
  Entonces debería ver "Milestone updated successfully."
  Y debería ver "Ninguna otra empresa ofrece mejores servicios."
  Y debería ver la imagen "milestone_picture2.jpg"

@admin
Escenario: eliminar hito
  Dado que existe el hito "Mejor servicio imposible"
  Y que estoy en la página inicial
  Cuando hago click en "Milestones"
  Y hago click en "Delete"
  Entonces debería ver "Milestone successfully deleted."
  Y no debería ver "Mejor servicio imposible"

Escenario: el usuario puede ver los hitos
  Cuando hago click en "Milestones"
  Entonces debería ver "Mejor servicio imposible"
  Y no debería ver los controles de administración

