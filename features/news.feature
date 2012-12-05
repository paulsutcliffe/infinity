# language: es

Característica: administrar la página de noticias

@admin
Escenario: agregar noticia
  Dado que estoy en la página inicial
  Cuando hago click en "News"
  Y hago click en "New New"
  Y lleno "title" con "Feriado largo generará millones por actividad turística"
  Y lleno "content" con "Artículo textual de la noticia Feriado largo generará millones por actividad turística"
  Y uso la imagen "news_picture.jpg"
  Cuando presiono "Save"
  Entonces debería ver "New created successfully."
  Y debería ver "Feriado largo generará millones por actividad turística"
  Y debería ver "Artículo textual de la noticia Feriado largo generará millones por actividad turística"" 
  Y debería ver la imagen "news_picture.jpg"

@admin
Escenario: editar noticia
  Dado que existe la noticia "Feriado largo generará millones por actividad turística"
  Y que estoy en la página inicial
  Cuando hago click en "News"
  Y hago click en "Edit"
  Y lleno "title" con "Ejecutivo declaró feriado largo este fin de semana"
  Y uso la imagen "news_picture2.jpg"
  Cuando presiono "Save"
  Entonces debería ver "New updated successfully."
  Y debería ver "Ejecutivo declaró feriado largo este fin de semana"
  Y debería ver la imagen "news_picture2.jpg" 

@admin
Escenario: eliminar noticia
  Dado que existe la noticia "Feriado largo generará millones por actividad turística"
  Y que estoy en la página inicial
  Cuando hago click en "News"
  Y hago click en "Delete"
  Entonces debería ver "New deleted successfully."
  Y no debería ver "Feriado largo generará millones por actividad turística"

Escenario: el usuario puede ver las noticias
  Cuando hago click en "News"
  Entonces debería ver "Feriado largo generará millones por actividad turística"
  Y no debería ver los controles de administración
