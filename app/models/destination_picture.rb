class DestinationPicture < ActiveRecord::Base
  belongs_to :destination


  validates :destination_picture, :presence => true
  validates_attachment_content_type :destination_picture, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :destination_picture, :less_than => 1.megabytes
  
  has_attached_file :destination_picture, :styles => {
    :default => {:geometry => '400x400#', :quality => 80, :format => 'jpg'}
  }
end
