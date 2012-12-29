class Destination < ActiveRecord::Base
  has_many :countries
  has_many :destination_pictures

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
