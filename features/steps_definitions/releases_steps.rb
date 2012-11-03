Dado /^que existe "(.*?)"$/ do |publicacion|
  Release.new(:title => publicacion, 
              :description => "Contenido escrito de la publicación").save!
end

Cuando /^existe "(.*?)"$/ do |publicacion|
  Release.new(:title => publicacion, 
              :description => "Contenido escrito de la publicación").save!
end
