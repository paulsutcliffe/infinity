#coding: utf-8
Dado /^que existe el día "(.*?)" del viaje a "(.*?)"$/ do |dia, viaje|
  if Day.find_by_name(dia)
    @day = Day.find_by_name(dia)
  end
end

Cuando /^estoy en la página del día "(.*?)"$/ do |hotel|
  visit(day_hotel_path(hotel.day, hotel))
end

Cuando /^lleno nombre con "(.*?)"$/ do |nombre|
  fill_in("Nombre", :with => nombre)

end

Entonces /^debería ver hotel "(.*?)"$/ do |hotel|
  page.should have_content("Reseña descriptiva del hotel")
  page.should have_content("Los Delfines" + hotel)
end

Dado /^que existe el hotel "(.*?)" del día "(.*?)"$/ do |hotel, dia|
  if Day.find_by_name(dia)
    @day = Day.find_by_name(dia)
  else
    @day = Day.new(:name => dia).save!
  end

  Hotel.new(:nombre => hotel).save!
end

