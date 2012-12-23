# language: es
@javascript
Característica: administrar la página de noticias

@admin
Escenario: agregar noticia
  Dado que estoy en la página inicial
  Cuando hago click en "News"
  Y hago click en "New Post"
  Y lleno "Title" con "Feriado largo generará millones por actividad turística"
  Y lleno "Content" con "Artículo textual de la noticia Feriado largo generará millones por actividad turística"
  Y adjunto "posts_picture.jpg" en "post_posts_picture"
  Cuando presiono "Save"
  Entonces debería ver "Post was successfully created."
  Y debería ver "Feriado largo generará millones por actividad turística"
  Y debería ver "Artículo textual de la noticia Feriado largo generará millones por actividad turística"
  Y debería ver la imagen "posts_picture.jpg"

@admin @edit
Escenario: editar noticia
  Dado que existe la noticia "Feriado largo generará millones por actividad turística"
  Y que estoy en la página inicial
  Cuando hago click en "News"
  Y hago click en "Edit"
  Y lleno "Title" con "Ejecutivo declaró feriado largo este fin de semana"
  Y adjunto "posts_picture2.jpg" en "post_posts_picture"
  Cuando presiono "Save"
  Entonces debería ver "Post was successfully updated."
  Y debería ver "Ejecutivo declaró feriado largo este fin de semana"
  Y debería ver la imagen "posts_picture2.jpg" 

@admin
Escenario: eliminar noticia
  Dado que existe la noticia "Feriado largo generará millones por actividad turística"
  Y que estoy en la página inicial
  Cuando hago click en "News"
  Y hago click en "Delete"
  Entonces debería ver "Post was successfully destroyed."
  Y no debería ver "Feriado largo generará millones por actividad turística"

Escenario: el usuario puede ver las noticias
  Dado que existe la noticia "Feriado largo generará millones por actividad turística"
  Y que estoy en la página inicial
  Cuando hago click en "News"
  Entonces debería ver "Feriado largo generará millones por actividad turística"
  Y no debería ver los controles de administración
