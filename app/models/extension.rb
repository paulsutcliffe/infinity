class Extension < ActiveRecord::Base
  belongs_to :offer_season_id
  belongs_to :travel_id
end
