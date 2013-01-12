class Pack < ActiveRecord::Base

extend FriendlyId
friendly_id :title, :use => :slugged

has_attached_file :pack_picture, :styles => {
  :default => {:geometry => '200x200#', :quality => 80, :format => 'jpg'}
}
end
