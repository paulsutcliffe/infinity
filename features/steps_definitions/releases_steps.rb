#coding: utf-8
Cuando /^existe "(.*?)"$/ do |publicacion|
  PressRelease.new(:title => publicacion,
              :content => "Contenido escrito de la publicación").save!
  visit('/press_releases')
end
