class About < ActiveRecord::Base



has_attached_file :about_picture, :styles => {
  :landing_page => {:geometry => '630x360#', :quality => 80, :format => 'jpg'}
}

end
