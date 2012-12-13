#language: es

Característica: adminstrar los slides

@admin
Escenario: Crear un Slide
  Cuando hago click en "Slides"
  Y hago click en "New Slide"
  Y uso la imagen "slide.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Slide was successfully created."
  Y debería ver la imagen "slide.jpg"

@admin
Escenario: Editar un Slide
  Cuando existe el Slide "slide.jpg"
  Y hago click en "Slides"
  Y hago click en "Edit"
  Y uso la imagen "slide2.jpg"
  Cuando presiono "Save"
  Entonces debería ver "Slide was successfully updated."
  Y debería ver la imagen "slide2.jpg"

@admin
Escenario: Eliminar un Slide
  Cuando existe el Slide "slide.jpg"
  Y hago click en "Slides"
  Y hago click en "Delete"
  Entonces debería ver "Slide was successfully destroyed."
