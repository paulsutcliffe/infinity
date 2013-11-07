class Testimony < ActiveRecord::Base

  has_attached_file :testimony_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :landing_page => {:geometry => '247x155#', :quality => 80, :format => 'jpg'},
    :default => {:geometry => '247x155#', :quality => 80, :format => 'jpg' }
  }

end
