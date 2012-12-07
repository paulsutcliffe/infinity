Dado /^que existe la noticia "(.*?)"$/ do |titulo|
  New.new(:title => titulo, 
          :content =>  "Artículo textual de la noticia Feriado largo generará millones por actividad turística",
          :news_picture => File.new("features/support/#{news_picture}", "r")).save!
end
