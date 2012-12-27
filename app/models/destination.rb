class Destination < ActiveRecord::Base
  has_many :destination_pictures
  has_many :countries


  extend FriendlyId
  friendly_id :name, :use => :slugged
end
