class Travel < ActiveRecord::Base
  belongs_to :country
  has_many :prices
  has_many :extensions
end
