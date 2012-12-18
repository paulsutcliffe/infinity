Dado /^que existe el hito "(.*?)"$/ do |titulo|
  Milestone.new(:title => titulo,
                :description => "Texto que complementa el título Premio a la mejor agencia de viajes",
                :milestone_picture => File.new("features/support/milestone_picture.jpg", "r")).save!

end

Cuando /^adjunto "(.*?)" en "(.*?)"$/ do |file, field|
  attach_file(field, File.expand_path("features/support/" + file))
end
