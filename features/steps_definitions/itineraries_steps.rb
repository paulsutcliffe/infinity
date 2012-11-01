Dado /^que existe el itinerario "(.*?)" del viaje a "(.*?)"$/ do |latitud, longitud|
  Itinerary.new(:latitud => latitud,
                :longitud => longitud).save!

end
