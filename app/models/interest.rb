class Interest < ActiveRecord::Base
  belongs_to :destination
  attr_accessible :name
end
