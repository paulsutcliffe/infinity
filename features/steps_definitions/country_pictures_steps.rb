Cuando /^existe la imagen "(.*?)" del país "(.*?)"$/ do |imagen, pais|
  country = Pais.find_by_name(pais)
  PaisPicture.new(:country_id => country, :pais_picture => File.new("features/support/pais_picture.jpg", "r")).save!
end
