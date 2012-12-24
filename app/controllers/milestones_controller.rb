class MilestonesController < InheritedResources::Base

validates_milestone_picture :presence, :true

has_attached_file :milestone_picture, :styles => {
  :thumb => {:geometry => '50x50#', :quality => '80', :format => 'jpg' }
}

end
