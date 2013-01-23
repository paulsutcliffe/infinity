class HotelPicture < ActiveRecord::Base
  belongs_to :itinerary_content


  has_attached_file :hotel_photo, :styles => {
    :default => {:geometry => '140x140#', :quality => 80}
  }
end
