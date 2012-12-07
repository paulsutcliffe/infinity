Cuando /^estoy en la página del hotel "(.*?)"$/ do |hotel|
  visit(day_hotel_path(hotel.day, hotel))
end

Cuando /^que existe la imagen "(.*?)"$/ do |imagen|
  HotelPicture.new(:hotel_picture => File.new("features/support/hotel_picture.jpg", "r")).save!
end

