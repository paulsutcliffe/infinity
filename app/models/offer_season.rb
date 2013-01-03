class OfferSeason < ActiveRecord::Base

has_many :offers, :dependent => :destroy

scope :not_in_season, where("(select count(*) from offers where offer_season_id=offer.id) = 0")


extend FriendlyId
friendly_id :title, :use => :slugged


end
