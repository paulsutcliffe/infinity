class AboutsController < InheritedResources::Base

# load about column in every action
def about_infinity
  @about = About.limit(1)
end

def awards 
  @milestones = Milestone.all
end

def staff
  @members = Member.all
end

helper_method :about_infinity

# http://stackoverflow.com/questions/2139996/ruby-on-rails-redirect-toback

# def edit
# session[:return_to] = request.referer
# redirect_to session.delete[:return_to]

# end

# def update
#  session[:return_to] = request.referer
#  update! {redirect_to session.delete[:return_to]}
# end


end
