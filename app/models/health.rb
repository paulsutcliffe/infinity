class Health < ActiveRecord::Base

  #validates :title, :url, :presence => true
  #validates_attachment_content_type :health_picture, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
  #validates_attachment_size :health_picture, :less_than => 1.megabytes
  attr_accessible :title , :url, :description, :health_picture


  has_attached_file :health_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :front => {:geometry => '247x155#', :quality => 80, :format => 'jpg'},
    :thumb => {:geometry => '50x50#', :quality => 80, :format => 'jpg'}
  }

end
