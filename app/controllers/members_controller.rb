class MembersController < InheritedResources::Base

before_filter :authenticate_admin!
# find members in abouts#staff

def create
  create! { members_path }
end

def update
  update! { members_path }
end

end
