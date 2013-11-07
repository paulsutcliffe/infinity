class Pack < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, :use => :slugged
  attr_accessible :title, :description, :slug, :pack_picture
  has_attached_file :pack_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :default => {:geometry => '200x200#', :quality => 80, :format => 'jpg'}
  }
end
