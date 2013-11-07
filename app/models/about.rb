class About < ActiveRecord::Base

  has_attached_file :picture_landing_page,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :landing_page => {:geometry => '630x360#', :quality => 80, :format => 'jpg'}
  }

  has_attached_file :about_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :default => {:geometry => '200x260#', :quality => 80, :format => 'jpg'}
  }

  has_attached_file :global_proyection_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :default => {:geometry => '670x200#', :quality => 80, :format => 'jpg'}
  }

end
