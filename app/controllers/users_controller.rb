class UsersController < InheritedResources::Base

  def index
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def new_travel_agent
    @user = User.new
  end
end
