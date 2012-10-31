Cuando /^lleno el formulario para el viaje "(.*?)"$/ do |viaje|
  fill_in("Name", :with => viaje)
  fill_in("Overview", :with => "a nice trip")
  fill_in("Advantages", :with => "amazing landscapes")
  fill_in("Price", :with => "Starting at 950.00")
  fill_in("Days", :with => 4)
  fill_in("Departures", :with => 5)
  fill_in("Maximun Group Size", :with => 12)
  fill_in("Notes", :with => "always carry a flashlight")
end

Dado /^que existe el viaje "(.*?)" del país "(.*?)"$/ do |viaje, pais|
  country = Pais.find_by_name(pais)
  Trave.new(:country_id => country, :name => viaje, :overview => "a nice trip", :advantages => "amazing landscapes", :price => "Starting at 950.00", :days => 4, :departures => 5, :maxgroupsize => 12, :notes => "always carry a flashlight").save!
end
