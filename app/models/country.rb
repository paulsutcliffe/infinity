class Country < ActiveRecord::Base
  has_many :country_pictures
  has_many :travels
end
