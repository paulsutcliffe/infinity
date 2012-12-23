# language: es
@javascript
Característica: administrar los testimonios 

@admin 
Escenario: crear un testimonio
  Dado que estoy en la página inicial
  Cuando hago click en "Testimonies"
  Y hago click en "New Testimony"
  Y lleno "Name" con "Pedro Perez"
  Y lleno "Description" con "Me brindaron un servicio de maravilla"
  Y adjunto "testimony_picture.jpg" en "testimony_testimony_picture"
  Y presiono "Save"
  Entonces debería ver "Testimony was successfully created."
  Y debería ver "Pedro Perez"
  Y debería ver "Me brindaron un servicio de maravilla"
  Y debería ver la imagen "testimony_picture.jpg" 


@admin
Escenario: editar un testimonio
  Dado que existe el testimonio "Pedro Perez"
  Cuando hago click en "Testimonies"
  Y hago click en "Edit"
  Y lleno "Name" con "Pancho Perez"
  Y adjunto "testimony_picture2.jpg" en "testimony_testimony_picture"
  Y presiono "Save"
  Entonces debería ver "Testimony was successfully updated."
  Y debería ver "Pancho Perez"
  Y debería ver la imagen "testimony_picture2.jpg"

@admin
Escenario: eliminar un testimonio
  Dado que existe el testimonio "Pedro Perez"
  Cuando hago click en "Testimonies"
  Y hago click en "Delete"
  Entonces debería ver "Testimony was successfully destroyed."
  Y no debería ver "Pedro Perez"

Escenario: el usuario puede ver los testimonios
  Cuando hago click en "Testimonies"
  Entonces debería ver "Pedro Perez"
  Y no debería ver los controles de administración
