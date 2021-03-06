class Milestone < ActiveRecord::Base
  attr_accessible :title, :description, :milestone_picture

  #validates_attachment_content_type :milestone_picture, :content_type => [ 'image/png', 'image/jpg', 'image/jpeg' ]
  #validates_attachment_size :milestone_picture, :less_than => 1.megabytes

  has_attached_file :milestone_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :thumb => { :geometry => '150x150#', :quality => 80, :format => 'jpg' }
  }

end
