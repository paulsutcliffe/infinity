class About < ActiveRecord::Base


has_attached_file :picture_landing_page, :styles => {
  :landing_page => {:geometry => '630x360#', :quality => 80, :format => 'jpg'}
}

has_attached_file :about_picture, :styles => {
  :default => {:geometry => '200x260#', :quality => 80, :format => 'jpg'}
}

has_attached_file :global_proyection_picture, :styles => {
  :default => {:geometry => '670x200#', :quality => 80, :format => 'jpg'}
}

end
