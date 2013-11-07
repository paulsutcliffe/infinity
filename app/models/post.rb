class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, :use => :slugged

  has_attached_file :posts_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :landing_page => {:geometry => '630x360#', :quality => 80, :format => 'jpg'},
    :default => {:geometry => '150x150#', :quality => 80, :format => 'jpg'},
    :medium => {:geometry => '670x360#', :quality => 80, :format => 'jpg'}
  }

end
