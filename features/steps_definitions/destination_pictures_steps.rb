Cuando /^existe la imagen "(.*?)" del destino "(.*?)"$/ do |imagen, destino|
  destination = Destination.find_by_name(destino)
  DestinationPicture.new(:destination_id => destination, :destination_picture => File.new("features/support/destination_picture.jpg", "r")).save!
end
