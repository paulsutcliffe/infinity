Dado /^que existe el miembro "(.*?)"$/ do |nombre|
  Member.new(:name => nombre, 
             :email => "jose@infinity.com", 
             :description => "Descripción ampliada del perfil de José Chavez", 
             :member => File.new("features/support/#{member}", "r")).save!
end







