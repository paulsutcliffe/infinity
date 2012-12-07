# language: es

Característica: administrar el listado de partners

Antecedentes: estoy en la página inicial
  Cuando hago click en "Partners" 

@admin
Escenario: agregar un partner
  Y hago click en "New Partner"
  Y lleno "title" con "Coca Cola"
  Y uso la imagen "partner_picture.png"
  Y presiono "Save"
  Entonces debería ver "Partner created successfully"
  Y debería ver "Coca Cola"
  Y debería ver la imagen "logo.png" 

@admin
Escenario: editar un partner
  Dado que existe "Coca Cola"
  Y hago click en "Editar"
  Y lleno "title" con "Pepsi"
  Y uso la imagen "partner_picture.2.png"
  Y presiono "Save"
  Entonces debería ver "Partner updated successfully"
  Y debería ver "Pepsi"
  Y debería ver la imagen "logo2.png"

@admin
Escenario: eliminar un partner
  Dado que existe "Coca Cola"
  Y hago click en "Eliminar"
  Entonces debería ver "Partner deleted successfully"
  Y no debería ver "Coca Cola"
  Y no debería ver la imagen "partner_picture.png"

Escenario: el usuario puede ver los partners
  Dado que existe "Coca Cola"
  Entonces debería ver "Coca Cola"
  Y no debería ver los controles de administración 

