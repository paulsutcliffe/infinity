class HomeController < ApplicationController
  def index
    @about_infinity = About.limit(1)
    @last_post = Post.limit(1).where(:landing_page => true)
    @last_testimony = Testimony.limit(1).where(:landing_page => true)

  end

end
