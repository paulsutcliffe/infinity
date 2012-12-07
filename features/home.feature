#language: es

Característica: los usuarios deberían de ver los últimos items de cada sección en la página inicial

Antecedentes: existe un item de cada una de las secciones
  Cuando estoy en la página inicial
  Y existe el slide "slide.jpg"
  Y existe el viaje "Machu Picchu"
  Y existe la noticia "Feriado largo generará millones por actividad turística"
  Y existe el paquete con "Novedad de Apertura"

Escenario: los visitantes navegan en la página inicial
  Entonces debería ver la imagen "slide.jpg"
  Y debería ver el slide "slide.jpg"
  Y debería ver el viaje "Machu Picchu"
  Y debería ver la noticia "Feriado largo generará millones por actividad turística"
  Y debería ver el paquete con "Novedad de Apertura"
  Y no debería ver los controles de administración
