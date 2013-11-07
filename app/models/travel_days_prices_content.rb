class TravelDaysPricesContent < ActiveRecord::Base
  belongs_to :price
  attr_accessible :room_class, :travel_price, :suplement, :availability, :offer_season_id, :travel_id, :price_id
end
