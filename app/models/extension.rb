class Extension < ActiveRecord::Base
  belongs_to :offer_season_id
  belongs_to :travel_id
  attr_accessible :title, :description, :price_from, :days, :departures, :party, :information, :itinerary_text, :travel_id

end
