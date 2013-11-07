class Hotel < ActiveRecord::Base
  belongs_to :itinerary_content
  attr_accessible :name, :offer_season_id, :travel_id, :itinerary_id, :itinerary_content_id, :hotel_picture

end
