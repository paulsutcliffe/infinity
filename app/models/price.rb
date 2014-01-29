class Price < ActiveRecord::Base
  belongs_to :travel
  belongs_to :offer_season

  has_many :travel_days_prices_contents, :dependent => :destroy
  accepts_nested_attributes_for :travel_days_prices_contents, :reject_if => lambda { |a| a[:room_class].blank? }, :allow_destroy => true
  attr_accessible :travel_days_prices_contents_attributes, :travel_price, :single, :internal_air, :available, :start_date, :due_date, :party, :travel_id, :offer_season_id, :country_id


end
