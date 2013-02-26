# language: es

Característica: administrar el listado de partners

@admin
Escenario: agregar un partner
  Cuando hago click en "Partners"
  Y hago click en "New Partner"
  Y lleno "Title" con "Coca Cola"
  Y uso la imagen "partners/img-brands-1.png"
  Y presiono "Save"
  Entonces debería ver "Partner was successfully created."
  Y debería ver "Coca Cola"
  Y debería ver la imagen "img-brands-1.png"

@admin
Escenario: editar un partner
  Cuando hago click en "Partners"
  Dado que existe el partner "Coca Cola"
  Y hago click en "Edit"
  Y lleno "Title" con "Pepsi"
  Y uso la imagen "partners/img-brands-2.png"
  Y presiono "Save"
  Entonces debería ver "Partner was successfully updated."
  Y debería ver "Pepsi"
  Y debería ver la imagen "img-brands-2.png"

@admin
Escenario: eliminar un partner
  Cuando hago click en "Partners"
  Dado que existe el partner "Coca Cola"
  Y hago click en "Delete"
  Entonces debería ver "Partner was successfully destroyed."
  Y no debería ver "Coca Cola"
  Y no debería ver la imagen "img-brands-1.png"

Escenario: el usuario puede ver los partners
  Dado que existe el partner "Coca Cola"
  Y que estoy en la página inicial
  Entonces debería ver la imagen "img-brands-1.png"
  Y no debería ver los controles de administración

