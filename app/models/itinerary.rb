class Itinerary < ActiveRecord::Base
  belongs_to :travel
  belongs_to :offer_season

  has_many :itinerary_contents, :dependent => :destroy
  accepts_nested_attributes_for :itinerary_contents, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  extend FriendlyId
  friendly_id :title, :use => :slugged
end
