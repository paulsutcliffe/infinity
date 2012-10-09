Cuando /^hago click en "(.*?)"$/ do |link|
  click_link(link)
end

Cuando /^uso la imagen "(.*?)"$/ do |archivo|
  attach_file("Imagen", File.expand_path(archivo))
end

Cuando /^lleno "(.*?)" con "(.*?)"$/ do |campo, valor|
  fill_in(campo, :with => valor)
end

Entonces /^debería ver la imagen "(.*?)"$/ do |archivo|
  page.should have_xpath("//img[contains(@src, \"#{archivo}\")]")
end

Cuando /^existe el Slide "(.*?)"$/ do |imagen|
  Slide.new(:nombre => nombre, :encabezado1 => "Encabezado 1", :encabezado2 => "Encabezado 2", :slide => File.new("features/support/#{imagen}", "r")).save!
end
