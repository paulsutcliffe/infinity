class Country < ActiveRecord::Base
  has_many :country_pictures, :dependent => :destroy
  has_many :travels, :dependent => :destroy
  belongs_to :destination

  extend FriendlyId
  friendly_id :name, :use => :slugged
end
