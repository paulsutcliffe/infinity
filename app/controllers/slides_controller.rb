class SlidesController < InheritedResources::Base
  before_filter :authenticate_admin!

  def create
    create! { slides_path }
  end
 
  def update
    update! { slides_path }
  end

  def destroy
    destroy! { slides_path }
  end
end
