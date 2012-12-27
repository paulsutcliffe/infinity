class DestinationPicture < ActiveRecord::Base
  belongs_to :destination
  
  has_attached_file :destination_picture, :styles => {
    :default => {:geometry => '200x100#', :quality => 80, :format => 'jpg'}
  }
end
