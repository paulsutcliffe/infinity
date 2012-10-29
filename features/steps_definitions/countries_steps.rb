Cuando /^lleno el formulario para el país "(.*?)"$/ do |nombre|
  fill_in("Name", :with => nombre)
  fill_in("Time Zone", :with => "GMT-5")
  fill_in("Weather widget", :with => '<script type="text/javascript" src="http://voap.weather.com/weather/oap/PEXX0011?template=TRVLV&par=3000000007&unit=0&key=twciweatherwidget"></script>')
  fill_in("Voltage", :with => "220")
  fill_in("Currency", :with => "Nuevos soles (S/.)")
  fill_in("Description", :with => "Come and see the beatiful " + nombre)
  attach_file("Map", File.expand_path('features/support/country_map.jpg'))
end

Dado /^que existe el país "(.*?)" del destino "(.*?)"$/ do |nombre, destino|
  if Destino.find_by_name(destino)
    @destino = Destino.find_by_name(destino)
  else
    @destino = Destino.new(:name => destino).save!
  end
  Country.new(:destino_id => @destino.id, :name => nombre, :description => "Come and see the magic of " + nombre, :map => File.new("features/support/country_map.jpg", "r")).save!
end
