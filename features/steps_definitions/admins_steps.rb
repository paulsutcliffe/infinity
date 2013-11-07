#coding: utf-8
email = 'webmaster@infinity.com'
password = 'infinity99'

Before('@admin') do
  Admin.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/admins/sign_in'
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "Sign in"
end

Dado /^que existe un administrador$/ do
  Admin.new(:email => email, :password => password, :password_confirmation => password).save!
end

Cuando /^visito "(.*?)"$/ do |pagina|
  visit(pagina)
end

Cuando /^lleno el formulario con los datos del administrador$/ do
  fill_in "Email", :with => email
  fill_in "Password", :with => password
end

Dado /^que estoy en la página inicial$/ do
  visit('/')
end

Cuando /^presiono "(.*?)"$/ do |boton|
  click_button(boton)
end

Entonces /^debería ver "(.*?)"$/ do |resultado|
  page.should have_content(resultado)
end
