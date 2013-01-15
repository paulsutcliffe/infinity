class Country < ActiveRecord::Base
  has_many :country_pictures, :dependent => :destroy
  has_many :travels, :dependent => :destroy
  has_many :itineraries, :dependent => :destroy
  has_many :prices, :dependent => :destroy
  belongs_to :destination

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
