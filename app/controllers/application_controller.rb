class ApplicationController < ActionController::Base
  protect_from_forgery

  def bodyid
    @bodyid = params[:controller].parameterize
  end

  def bodyclass
    @bodyclass = params[:action].parameterize

    if params[:controller] == 'home'
      @front = 'front'
    else
      @front = 'not-front'
    end

    if current_admin
      @admin = 'infinity-admin'
    else
      @admin = ''
    end

    if current_user
      @user = 'logged-in'
    else
      @user = 'user-not-logged-in'
    end

    if File.exists?(Rails.root.join("app", "views", params[:controller], "_sidebar_first.html.haml"))
      @sidebar = 'sidebar sidebar-first'
    else
      @sidebar = ''
    end

    @bodyclass = @bodyclass + ' ' + @front + ' ' + @admin + ' ' + @user + ' ' + @sidebar
  end

  helper_method :bodyid
  helper_method :bodyclass

end
