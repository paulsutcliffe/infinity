class UsersController < InheritedResources::Base

def index
  @user = User.find(params[:id])
end

def show
  @user = User.find(params[:id])
end


end
