class ItineraryContent < ActiveRecord::Base

  belongs_to :itinerary
  has_one :hotel, :dependent => :destroy
  attr_accessible :content, :hotel, :offer_season_id, :travel_id, :itinerary_id, :itinerary_content_picture


  has_attached_file :itinerary_content_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :default => {:geometry => '100x100#', :quality => 80},
    :lightbox => {:geometry => '800x600>', :quality => 80}
  }

end
