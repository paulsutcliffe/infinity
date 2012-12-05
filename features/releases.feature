# language: es

Característica: administrar la página de publicaciones

Antecedentes: estoy en la página inicial
  Cuando hago click en "Releases"

@admin
Escenario: Agregar una publicación
  Y hago click en "New Release"
  Y lleno "title" con "Novedad de Apertura"
  Y presiono "Save"
  Entonces debería ver "Release created successfully."
  Y debería ver "Novedad de Apertura"

@admin
Escenario: Editar una publicación
  Dado que existe "Novedad de Apertura"
  Y hago click en "Editar"
  Y lleno "title" con "Novedad de Clausura"
  Y presiono "Save"
  Entonces debería ver "Release updated successfully."
  Y debería ver "Novedad de Clausura"

@admin
Escenario: Eliminar una publicación
  Dado que existe "Novedad de Apertura"
  Y hago click en "Delete"
  Entonces debería ver "Release deleted successfully."
  Y no debería ver "Novedad de Apertura"

Escenario: Usuario puede ver las publicaciones
  Cuando existe "Novedad de Apertura"
  Entonces debería ver "Novedad de Apertura"
  Y no debería ver los controles de administración


