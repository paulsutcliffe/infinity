class PressRelease < ActiveRecord::Base
belongs_to :post

extend FriendlyId
friendly_id :title, :use => :slugged 

end
