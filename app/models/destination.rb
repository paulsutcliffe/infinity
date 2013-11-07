class Destination < ActiveRecord::Base
  has_many :countries, :dependent => :destroy
  has_many :destination_pictures, :dependent => :destroy
  attr_accessible :name, :description, :image_map, :slug

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
