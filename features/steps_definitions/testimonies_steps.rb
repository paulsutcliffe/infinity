Dado /^que existe el testimonio "(.*?)"$/ do |titulo|
  Testimony.new(
    :name => 'Pedro Perez',
    :description => 'Me brindaron un servicio de maravilla',
    :testimony_picture => File.new("features/support/testimony_picture.jpg", "r")).save!
end
