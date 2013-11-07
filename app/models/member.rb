class Member < ActiveRecord::Base
  attr_accessible  :name, :email, :position, :description, :member_picture



  has_attached_file :member_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :thumb => {:geometry => '100x100#', :quality => 80, :format => 'jpg'},
    :default => {:geometry => '200x200#', :quality => 80, :format => 'jpg'}
  }


end
