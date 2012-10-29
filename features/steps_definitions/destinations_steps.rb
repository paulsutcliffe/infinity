Dado /^que existe el destino "(.*?)"$/ do |nombre|
  unless Destination.find_by_name(nombre)
    Destination.new(:name => nombre, :map => File.new("features/support/destination_map.jpg", "r")).save!
  end
  visit('/')
end

Cuando /^lleno el formulario para el destino "(.*?)"$/ do |nombre|
  fill_in("name", :with => nombre)
  fill_in("description", :with => "Discovery the magic of " + nombre)
  attach_file("Map", File.expand_path('features/support/destination_map.jpg'))
end

Entonces /^no debería ver "(.*?)"$/ do |resultado|
  page.should have_no_content(resultado)
end

Entonces /^no debería ver los controles de administración$/ do
  page.should have_no_content("Edit")
  page.should have_no_content("Delete")
  page.should have_no_content("New")
end

