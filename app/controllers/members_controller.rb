class MembersController < InheritedResources::Base

before_filter :authenticate_admin!
# find members in abouts#staff

def create
  create! { know_our_staff_abouts_path }
end

def update
  update! { know_our_staff_abouts_path }
end

end
