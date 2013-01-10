#language: es

Característica: administrar la página de los miembros

@admin
Escenario: Agregar miembro
  Dado que estoy en la página inicial
  Cuando hago click en "About Us"
  Y hago click en "Know our Staff"
  Y hago click en "New Member"
  Y lleno "Name" con "José Chavez"
  Y lleno "Email" con "jose@infinity.com" 
  Y lleno "Description" con "Descripción ampliada del perfil de José Chavez"
  Y adjunto "member_picture.jpg" en "member_member_picture"
  Cuando presiono "Save"
  Entonces debería ver "Member was successfully created."
  Y debería ver "José Chavez"
  Y debería ver "jose@infinity.com"
  Y debería ver "Descripción ampliada del perfil de José Chavez"
  Y debería ver la imagen "member_picture.jpg"

@admin
Escenario: Editar un miembro existente
  Dado que existe el miembro "José Chavez"
  Y que estoy en la página inicial
  Cuando hago click en "About Us"
  Y hago click en "Know our Staff"
  Y hago click en "Edit"
  Y lleno "Name" con "Miguel Grau"
  Y adjunto "member_picture2.jpg" en "member_member_picture"
  Cuando presiono "Save"
  Entonces debería ver "Member was successfully updated."
  Y debería ver "Miguel Grau"
  Y debería ver la imagen "member_picture2.jpg"

@admin
Escenario: Eliminar un miembro existente
  Dado que existe el miembro "José Chavez"
  Y que estoy en la página inicial
  Cuando hago click en "About Us"
  Y hago click en "Know our Staff"
  Y hago click en "Delete"
  Entonces debería ver "Member was successfully destroyed."
  Y no debería ver "José Chavez"

Escenario: El usuario puede ver los miembros
  Dado que existe el miembro "José Chavez"
  Y que estoy en la página inicial
  Cuando hago click en "About Us"
  Y hago click en "Know our Staff"
  Entonces debería ver "José Chavez"
  Y no debería ver los controles de administración 


