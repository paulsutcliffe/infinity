class Testimony < ActiveRecord::Base


has_attached_file :testimony_picture, :styles => {
  :landing_page => {:geometry => '235x155#', :quality => 80, :format => 'jpg'},
  :default => {:geometry => '235x155#', :quality => 80, :format => 'jpg' }
}
end
