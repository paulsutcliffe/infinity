class Price < ActiveRecord::Base
  belongs_to :travel
  belongs_to :offer_season

  has_many :travel_days_prices_contents, :dependent => :destroy
  accepts_nested_attributes_for :travel_days_prices_contents, :reject_if => lambda { |a| a[:room_class].blank? }, :allow_destroy => true


end
