#language: es

Característica: adminstrar los slides

@admin
Escenario: Crear un Slide
  Cuando hago click en "Slides"
  Y hago click en "Nuevo Slide"
  Y uso la imagen "slide.jpg"
  Y lleno "Heading 1" con "Viaja por el mundo"
  Y lleno "Heading 2" con "con los paquetes de Infinity"
  Cuando presiono "Save"
  Entonces debería ver "Slide created correctly"
  Y debería ver la imagen "slide.jpg"
  Y debería ver "Viaja por el mundo"
  Y debería ver "con los paquetes de Infinity"

@admin
Escenario: Editar un Slide
  Cuando existe el Slide "imagen.jpg"
  Y hago click en "Slides"
  Y hago click en "Editar"
  Y uso la imagen "slide2.jpg"
  Y lleno "Encabezado 1" con "Viaja por sudamerica"
  Y lleno "Encabezado 2" con "con las promociones de Infinity"
  Cuando presiono "Guardar"
  Entonces debería ver "Slide actualizado correctamente"
  Y debería ver la imagen "slide2.jpg"
  Y debería ver "Viaja por sudamerica"
  Y debería ver "con las promociones de Infinity"

@admin
Escenario: Eliminar un Slide
  Cuando existe el Slide "slide.jpg"
  Y hago click en "Slides"
  Y hago click en "Eliminar"
  Entonces debería ver "Slide eliminado correctamente"
