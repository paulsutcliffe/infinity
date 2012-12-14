class Milestone < ActiveRecord::Base


validates_attachment_content_type :milestone_picture, :content_type => [ 'image/png', 'image/jpg', 'image/jpeg' ]
validates_attachment_size :milestone_picture, :less_than => 1.megabytes

has_attached_file :milestone_picture, :styles => {
  :medium => { :geometry => '110#', :quality => 80, :format => 'jpg' } 
}

end
