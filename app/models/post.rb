class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, :use => :slugged
  attr_accessible :title, :content, :important, :landing_page, :slug, :posts_picture

  has_attached_file :posts_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :landing_page => {:geometry => '630x360#', :quality => 80, :format => 'jpg'},
    :default => {:geometry => '620x166#', :quality => 90, :format => 'jpg'},
    :medium => {:geometry => '620x166#', :quality => 90, :format => 'jpg'}
  }

end
