class ItineraryContent < ActiveRecord::Base

  belongs_to :itinerary
  has_one :hotel, :dependent => :destroy


  has_attached_file :itinerary_content_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :default => {:geometry => '100x100#', :quality => 80},
    :lightbox => {:geometry => '800x600>', :quality => 80}
  }

end
