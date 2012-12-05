Dado /^que existe el hito "(.*?)"$/ do |titulo|
  Milestone.new(:title => titulo,
                :description => "Texto que complementa el título Mejor servicio imposible",
                :telefono2 => "3334455",
                :milestone_picture => File.new("features/support/#{milestones_picture}", "r")).save!

end
