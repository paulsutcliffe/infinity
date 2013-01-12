class Travel < ActiveRecord::Base
  belongs_to :country
  belongs_to :offer_season
  has_many :prices
  has_many :extensions

  extend FriendlyId
  friendly_id :name, :use => :slugged


  validates :name, :presence => true
  #validates :description, :presence => true
  validates_attachment_content_type :travel_picture, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
  validates_attachment_size :travel_picture, :less_than => 1.megabytes
  
  has_attached_file :travel_picture, :styles => {
    :thumb => {:geometry => '100x100#', :quality => 80, :format => 'jpg'},
    :default => {:geometry => '400x300#', :quality => 80, :format => 'jpg'}
  }
end
