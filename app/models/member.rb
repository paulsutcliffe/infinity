class Member < ActiveRecord::Base



  has_attached_file :member_picture, :styles => {
    :thumb => {:geometry => '100x100#', :quality => 80, :format => 'jpg'},
    :default => {:geometry => '200x200#', :quality => 80, :format => 'jpg'}
  }


end
