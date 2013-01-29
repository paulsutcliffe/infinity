class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, :use => :slugged  
  
  has_many :posts_and_events
  has_many :press_releases
  
  has_attached_file :posts_picture, :styles => {
    :landing_page => {:geometry => '630x360#', :quality => 80, :format => 'jpg'},
    :default => {:geometry => '150x150#', :quality => 80, :format => 'jpg'},
    :medium => {:geometry => '670x360#', :quality => 80, :format => 'jpg'}
  }


 # def to_param
   # 'news/news_and_events/'.to_s
    #'news/news_and_events' #+ "#{id}"
 # end

end
