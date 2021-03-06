class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :last_name, :email, :password, :password_confirmation, :address1, :state, :city, :country, :zipcode, :phone, :address2, :travel_agent, :code, :remember_me

  validates :name, :last_name, :email, :password, :password_confirmation, :address1, :state, :city, :country, :zipcode, :presence => true

end
