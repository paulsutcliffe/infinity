class Booking < ActiveRecord::Base
  attr_accessible :name, :last_name, :email, :phone, :comment, :slug

end
