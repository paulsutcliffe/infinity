class Post < ActiveRecord::Base

has_many :posts_and_events
has_many :press_releases

has_attached_file :posts_picture, :styles => {
  :landing_page => {:geometry => '630x360#', :quality => 80, :format => 'jpg'},
  :default => {:geometry => '150x150#', :quality => 80, :format => 'jpg'}
}

end
