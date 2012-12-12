class Slide < ActiveRecord::Base



# paperclip
validates :slide, :presence => true
validates_attachment_content_type :slide, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
validates_attachment_size :slide, :less_than => 1.megabytes

has_attached_file :slide, :styles => {
    :medium => {:geometry => '475x125>', :quality => 50, :format => 'jpg'},
    :full => {:geometry => '950x250>', :quality => 90, :format => 'jpg'}
}

end
