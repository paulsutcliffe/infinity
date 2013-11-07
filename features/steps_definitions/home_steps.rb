#coding: utf-8
Cuando /^estoy en la página inicial$/ do
end

Cuando /^existe el slide "(.*?)"$/ do |slide|
  slide = Slide.find_by_name(slide)
end

Cuando /^existe el viaje "(.*?)"$/ do |viaje|
  viaje = Viaje.find_by_name(viaje)
end

Cuando /^existe la noticia "(.*?)"$/ do |noticia|
  noticia = Noticia.find_by_name(noticia)
end

Cuando /^existe el paquete con "(.*?)"$/ do |paquete|
  paquete = Paquete.find_by_name(paquete)
end

Entonces /^debería ver el slide "(.*?)"$/ do |slide|
  page.should have_content("slide.jpg")
end

Entonces /^debería ver el viaje "(.*?)"$/ do |viaje|
  page.should have_content( "Machu Picchu" + viaje)
end

Entonces /^debería ver la noticia "(.*?)"$/ do |noticia|
  page.should have_content("Feriado largo generará millones por actividad turística" + noticia)
end

Entonces /^debería ver el paquete con "(.*?)"$/ do |paquete|
  page.should have_content("Novedad de Apertura" + paquete)
end
