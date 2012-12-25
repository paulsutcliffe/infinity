class Pack < ActiveRecord::Base

has_attached_file :pack_picture, :styles => {
  :default => {:geometry => '200x200#', :quality => 80, :format => 'jpg'}
}
end
