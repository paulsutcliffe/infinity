class ApplicantsController < InheritedResources::Base


  def create
    @applicant = Applicant.new(params[:applicant])

    create! do |success, failure|
      success.html do
        ApplicantMailer.applicant_confirmation(@applicant).deliver
        ApplicantMailer.applicant_notification(@applicant).deliver

        flash[:notice] = "Your application has been sent."
        redirect_to new_applicant_path
      end

      failure.html do
        flash[:notice] = "There was a problem with your submission, fix the errors bellow and try again."
        render :action => "new"
      end

    end
  end




end
