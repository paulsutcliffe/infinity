class OfferSeason < ActiveRecord::Base

  has_many :travels, :dependent => :destroy
  has_many :itineraries, :dependent => :destroy
  has_many :prices, :dependent => :destroy
  has_many :extensions, :dependent => :destroy
  has_many :hotels, :dependent => :destroy
  attr_accessible :title, :slug

  #scope :not_in_season, where("(select count(*) from offers where offer_season_id=offer.id) = 0")

  def not_in_season
    OfferSeason.find(:all) - OfferSeason.find_by_id(1)
  end

  extend FriendlyId
  friendly_id :title, :use => :slugged


end
