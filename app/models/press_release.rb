class PressRelease < ActiveRecord::Base
belongs_to :post

extend FriendlyId
friendly_id :title, :use => :slugged 

  has_attached_file :press_release_picture, :styles => {
    :default => {:geometry => '150x150#', :quality => 80, :format => 'jpg'},
    :medium => {:geometry => '670x360#', :quality => 80, :format => 'jpg'}
  }

end
