class CountryPicture < ActiveRecord::Base
  belongs_to :country
  attr_accessible :country_picture, :country_id

  validates :country_picture, :presence => true
  #validates_attachment_content_type :country_picture, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
  #validates_attachment_size :country_picture, :less_than => 4.megabytes

  has_attached_file :country_picture,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :default => {:geometry => '400x400#', :quality => 80, :format => 'jpg'},
    :large => {:geometry => '800x800>', :quality => 80, :format => 'jpg'}
  }

end
