class AboutsController < InheritedResources::Base

  # load about column in every action
  def about_infinity
    @about = About.limit(1)
  end

  def milestones
    @milestones = Milestone.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def staff
    @members = Member.all
  end

  def global_proyection
    @global = About.limit(1)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def terms

  end

  helper_method :about_infinity

end
