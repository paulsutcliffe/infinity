class MembersController < InheritedResources::Base
  before_filter :authenticate_admin!, :only => [:new]
end
