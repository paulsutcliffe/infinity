class ItineraryContent < ActiveRecord::Base

  belongs_to :itinerary


  has_attached_file :itinerary_content_picture, :styles => {
    :default => {:geometry => '100x100#', :quality => 80}
    
  }

end
