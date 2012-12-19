# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#############################################################################
# Slide Model
#############################################################################
Slide.delete_all
Slide.create(
  :slide => File.open(File.join(Rails.root, '/features/support/img-slide.jpg')))

Slide.create(
  :slide => File.open(File.join(Rails.root, '/features/support/img-slide-2.jpg')))


#############################################################################
# Milestone Model
#############################################################################
Milestone.delete_all
Milestone.create(
  :title => 'Premio a la mejor agencia de viajes',
  :description => 'Texto que complementa el título Mejor servicio imposible',
  :milestone_picture => File.open(File.join(Rails.root, '/features/support/milestone_picture.jpg')))

Milestone.create(
  :title => 'Avión de Oro 2012',
  :description => 'Galardón otorgado por haber recibido la mayor cantidad de turistas desde distintas partes del mundo.',
  :milestone_picture => File.open(File.join(Rails.root, '/features/support/milestone_picture2.jpg')))
