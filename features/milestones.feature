# language: es

Característica: administrar la página de hitos

@admin
Escenario: agregar hito
  Dado que estoy en la página inicial
  Cuando hago click en "Milestones"
  Y hago click en "New Milestone"
  Y lleno "Title" con "Premio a la mejor agencia de viajes"
  Y lleno "Description" con "Texto que complementa el título Mejor servicio imposible"
  Y adjunto "milestone_picture.jpg" en "milestone_milestone_picture"
  Cuando presiono "Save"
  Entonces debería ver "Milestone was successfully created."
  Y debería ver "Mejor servicio imposible"
  Y debería ver "Texto que complementa el título Mejor servicio imposible"
  Y debería ver la imagen "milestone_picture.jpg"

@admin
Escenario: editar hito
  Dado que existe el hito "Premio a la mejor agencia de viajes"
  Y que estoy en la página inicial
  Cuando hago click en "Milestones"
  Y hago click en "Edit"
  Y lleno "Title" con "Premio medalla de oro."
  Y adjunto "milestone_picture2.jpg" en "milestone_milestone_picture"
  Y presiono "Save"
  Entonces debería ver "Milestone was successfully updated."
  Y debería ver "Premio medalla de oro."
  Y debería ver la imagen "milestone_picture2.jpg"

@admin
Escenario: eliminar hito
  Dado que existe el hito "Premio a la mejor agencia de viajes"
  Y que estoy en la página inicial
  Cuando hago click en "Milestones"
  Y hago click en "Delete"
  Entonces debería ver "Milestone was successfully destroyed."
  Y no debería ver "Premio a la mejor agencia de viajes"

Escenario: el usuario puede ver los hitos
  Cuando hago click en "Milestones"
  Entonces debería ver "Premio a la mejor agencia de viajes"
  Y no debería ver los controles de administración
