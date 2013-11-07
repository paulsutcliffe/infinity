#coding: utf-8
Cuando /^estoy en la página del viaje "(.*?)"$/ do |viaje|
  visit(country_travel_path(viaje.country, viaje))
end

Cuando /^lleno el formulario para el día "(.*?)"$/ do |dia|
  fill_in("Description", :with => "Arrive in Windhoek, and transfer to your hotel, nestled in a quiet, peaceful area close to the city center. Spend the remainder of the day at leisure, perhaps unwinding in the hotel gardens or at its swimming pool.")
  select(dia, :from => 'Day Number')
  attach_file("Picture", File.expand_path('features/support/day_picture.jpg'))
end

Entonces /^debería ver el día "(.*?)"$/ do |dia|
  page.should have_content("Arrive in Windhoek, and transfer to your hotel, nestled in a quiet, peaceful area close to the city center. Spend the remainder of the day at leisure, perhaps unwinding in the hotel gardens or at its swimming pool.")
  page.should have_content("Day " + dia)
  page.should have_xpath("//img[contains(@src, \"day_picture.jpg\")]")
end

Dado /^que existe el día "(.*?)" del viaje "(.*?)"$/ do |dia, viaje|
  if Travel.find_by_name(viaje)
    @travel = Travel.find_by_name(viaje)
  else
    @travel = Travel.new(:name => viaje).save!
  end

  Day.new(:travel_id => @travel, :number => dia, :description => "Arrive in Windhoek, and transfer to your hotel, nestled in a quiet, peaceful area close to the city center. Spend the remainder of the day at leisure, perhaps unwinding in the hotel gardens or at its swimming pool.", :picture => File.new("features/support/day_picture.jpg", "r")).save!
end

Entonces /^no debería ver el día "(.*?)"$/ do |dia|
  page.should not_have_content("Arrive in Windhoek, and transfer to your hotel, nestled in a quiet, peaceful area close to the city center. Spend the remainder of the day at leisure, perhaps unwinding in the hotel gardens or at its swimming pool.")
  page.should not_have_content("Day " + dia)
  page.should not_have_xpath("//img[contains(@src, \"day_picture.jpg\")]")
end
