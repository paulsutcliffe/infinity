class HomeController < ApplicationController
  def index
    @about_infinity = About.limit(1)
    @last_post = Post.limit(1).where(:landing_page => true)
    @last_testimony = Testimony.first(:offset => rand(Testimony.count))
    @health_random = Health.first(:offset => rand(Health.count))
    @destinations = Destination.all
    @interests = Interest.all
  end

end
