class HomeController < ApplicationController
  def index
   @slides = Slide.all 
   @last_post = Post.limit(1).where(:landing_page => true)
   @last_testimony = Testimony.limit(1).where(:landing_page => true)
  end

end
