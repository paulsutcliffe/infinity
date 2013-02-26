# language: es

Característica: administrar la página de publicaciones

Antecedentes: estoy en la página inicial
  Dado que estoy en la página inicial
  Cuando hago click en "News"
  Y hago click en "Press Releases"

@admin
Escenario: Agregar una publicación
  Cuando hago click en "New Press Release"
  Y lleno "Title" con "Novedad de Apertura"
  Y lleno "Content" con "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  Y presiono "Save"
  Entonces debería ver "Press release was successfully created."
  Y debería ver "Novedad de Apertura"

@admin
Escenario: Editar una publicación
  Dado existe "Novedad de Apertura"
  Y hago click en "Edit"
  Y lleno "Title" con "Novedad de Clausura"
  Y presiono "Save"
  Entonces debería ver "Press release was successfully updated."
  Y debería ver "Novedad de Clausura"

@admin
Escenario: Eliminar una publicación
  Dado existe "Novedad de Apertura"
  Y hago click en "Delete"
  Entonces debería ver "Press release was successfully destroyed."
  Y no debería ver "Novedad de Apertura"

Escenario: Usuario puede ver las publicaciones
  Cuando existe "Novedad de Apertura"
  Entonces debería ver "Novedad de Apertura"
  Y no debería ver los controles de administración


