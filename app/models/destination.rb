class Destination < ActiveRecord::Base
  has_many :countries, :dependent => :destroy
  has_many :destination_pictures, :dependent => :destroy
  has_many :interests
  attr_accessible :name, :description, :image_map, :slug, :interest_ids

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
