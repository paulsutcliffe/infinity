class About < ActiveRecord::Base

  attr_accessible :title_landing_page, :text_landing_page, :about_us, :history, :global_proyection, :work_with_us, :picture_landing_page, :about_picture, :global_proyection_picture

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
