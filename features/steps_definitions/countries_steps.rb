Cuando /^lleno el formulario con los datos del nuevo país$/ do
  fill_in("Name", :with => "Peru")
  fill_in("Time Zone", :with => "GMT-5")
  fill_in("Weather widget", :with => '<script type="text/javascript" src="http://voap.weather.com/weather/oap/PEXX0011?template=TRVLV&par=3000000007&unit=0&key=twciweatherwidget"></script>')
  fill_in("Voltage", :with => "220")
  fill_in("Currency", :with => "Nuevos soles (S/.)")
  fill_in("Description", :with => "")
end

Dado /^que existe el país "(.*?)"$/ do |arg1|
  Country.new(:name => "Peru").save!
end
