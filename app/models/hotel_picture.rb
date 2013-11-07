class HotelPicture < ActiveRecord::Base
  belongs_to :itinerary_content


  has_attached_file :hotel_photo,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :default => {:geometry => '140x140#', :quality => 80}
  }
end
