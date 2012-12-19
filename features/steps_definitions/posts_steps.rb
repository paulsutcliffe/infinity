Dado /^que existe la noticia "(.*?)"$/ do |titulo|
  Post.new(:title => titulo, 
          :content =>  "Artículo textual de la noticia Feriado largo generará millones por actividad turística",
          :posts_picture => File.new("features/support/#{posts_picture.jpg}", "r")).save!
end


Cuando /^adjunto la imagen "(.*?)" en "(.*?)"$/ do |file, field|
  attach_file(field, File.expand_path("features/support/" + file))

end

