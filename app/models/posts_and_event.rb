class PostsAndEvent < ActiveRecord::Base
belongs_to :post

extend FriendlyId
friendlyid :title, :use => :slugged

end
