class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # form validations
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :password
  validates_presence_of :password_confirmation
  validates_presence_of :address1
  validates_presence_of :state
  validates_presence_of :city
  validates_presence_of :country
  validates_presence_of :zipcode

end
