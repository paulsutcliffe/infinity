class Post < ActiveRecord::Base


has_attached_file :posts_picture, :styles => {
  :default => {:geometry => '40x40', :quality => 80, :format => 'jpg'}
}

end
