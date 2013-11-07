class Applicant < ActiveRecord::Base
  attr_accessible :name, :last_name, :email, :address1, :address2, :department, :city, :postal_code, :country, :phone

end
