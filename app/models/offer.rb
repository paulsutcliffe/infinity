class Offer < ActiveRecord::Base

belongs_to :offer_season
#has_and_belongs_to_many :offer_seasons

extend FriendlyId
friendly_id :title, :use => :slugged

validates :title, :presence => true
#validates :description, :presence => true
validates_attachment_content_type :offer_picture, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
validates_attachment_size :offer_picture, :less_than => 1.megabytes

has_attached_file :offer_picture, :styles => {
  :thumb => {:geometry => '100x100#', :quality => 80, :format => 'jpg'},
  :default => {:geometry => '400x300#', :quality => 80, :format => 'jpg'}
}

end
