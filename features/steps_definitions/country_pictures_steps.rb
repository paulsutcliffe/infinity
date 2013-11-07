#coding: utf-8
Cuando /^existe la imagen "(.*?)" del país "(.*?)"$/ do |imagen, pais|
  country = Country.find_by_name(pais)
  CountryPicture.new(:country_id => country, :country_picture => File.new("features/support/#{imagen}", "r")).save!
  visit('/')
end
