class MilestonesController < InheritedResources::Base
before_filter :authenticate_admin!

def create
  create! { milestones_abouts_path }
end

def update
  update! { milestones_abouts_path }
end


end
