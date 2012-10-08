#language: es

Característica: adminstrar los slides

@admin
Escenario: Crear un Slide
  Cuando hago click en "Slides"
  Y hago click en "New Slide"
  Y uso la imagen "slide.jpg"
  Y lleno "Heading 1" con "Viaja por el mundo"
  Y lleno "Heading 2" con "con los paquetes de infinity"
  Cuando presiono "Save"
  Entonces debería ver "Slide created correctly"
  Y debería ver la imagen "slide.jpg"
  Y debería ver "Viaja por el mundo"
  Y debería ver "con los paquetes de infinity"

@admin
Escenario: Editar un Slide
  Cuando existe el Slide "imagen.jpg"
  Y hago click en "Slides"
  Y hago click en "Editar"
  Y uso la imagen "imagen.jpg"
  Y lleno "Encabezado 1" con "Entra al canal de vimeo"
  Y lleno "Encabezado 2" con "de la tiabotas"
  Cuando presiono "Guardar"
  Entonces debería ver "Slide actualizado correctamente"
  Y debería ver la imagen "imagen.jpg"
  Y debería ver "Entra al canal de vimeo"
  Y debería ver "de la tiabotas"

@admin
Escenario: Eliminar un Slide
  Cuando existe el Slide "imagen.jpg"
  Y hago click en "Slides"
  Y hago click en "Eliminar"
  Entonces debería ver "Slide eliminado correctamente"

