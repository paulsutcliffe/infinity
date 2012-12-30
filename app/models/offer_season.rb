class OfferSeason < ActiveRecord::Base

#belongs_to :offer

extend FriendlyId
friendly_id :title, :use => :slugged

attr_accessible :offer_season

end
