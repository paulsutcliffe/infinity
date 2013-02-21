class CountryPicture < ActiveRecord::Base
  belongs_to :country

  validates :country_picture, :presence => true
  validates_attachment_content_type :country_picture, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :country_picture, :less_than => 4.megabytes

  has_attached_file :country_picture, :styles => {
    :default => {:geometry => '400x400#', :quality => 80, :format => 'jpg'},
    :large => {:geometry => '800x800>', :quality => 80, :format => 'jpg'}
  }

end
