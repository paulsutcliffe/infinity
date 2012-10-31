#language: es

Característica: administrar la página de los miembros

@admin
Escenario: Agregar miembro
  Dado que estoy en la página inicial
  Cuando hago click en "Members"
  Y hago click en "New Member"
  Y lleno "Name" con "José Chavez"
  Y lleno "Email" con "jose@infinity.com" 
  Y lleno "Description" con "Descripción ampliada del perfil de José Chavez"
  Y uso la imagen "member.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Miembro creado correctamente"
  Y debería ver "José Chavez"
  Y debería ver "jose@infinity.com"
  Y debería ver "Descripción ampliada del perfil de José Chavez"
  Y debería ver la imagen "member.jpg"

@admin
Escenario: Editar un miembro existente
  Dado que existe el miembro "José Chavez"
  Y que estoy en la página inicial
  Cuando hago click en "Members"
  Y hago click en "Edit"
  Y lleno "Name" con "Miguel Grau"
  Y uso la imagen "member2.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Miembro actualizado correctamente"
  Y debería ver "Miguel Grau"
  Y debería ver la imagen "member2.jpg"

@admin
Escenario: Eliminar un miembro existente
  Dado que existe el miembro "José Chavez"
  Y que estoy en la página inicial
  Cuando hago click en "Members"
  Y hago click en "Delete"
  Entonces debería ver "Miembro eliminado exitosamente"
  Y no debería ver "José Chavez"

Escenario: El usuario puede ver los miembros
  Cuando hago click en "Members"
  Entonces debería ver "José Chavez"
  Y no debería ver los controles de administración 


