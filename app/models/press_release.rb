class PressRelease < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, :use => :slugged
  attr_accessible :title, :content, :slug, :press_release_picture

end
