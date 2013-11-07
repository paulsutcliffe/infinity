class Country < ActiveRecord::Base
  has_many :country_pictures, :dependent => :destroy
  has_many :travels, :dependent => :destroy
  has_many :prices, :dependent => :destroy
  belongs_to :destination

  extend FriendlyId
  friendly_id :name, :use => :slugged

  has_attached_file :map,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => {
    :regular => {:geometry => '50x50#'}
  }
end
