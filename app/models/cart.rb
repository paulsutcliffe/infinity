class Cart < ActiveRecord::Base
 # has_many_and_belongs_to_many :teams
  attr_accessible :quantity, :travel_id 
end
