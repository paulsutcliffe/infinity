class ApplicantMailer < ActionMailer::Base
  default :from => "info@infinityperu.com"

  def applicant_confirmation(applicant)
    @applicant = applicant
    mail(:to => "info@infinityperu.com", :subject => "Applicant from web")
    #content_type "text/html"
  end

  def applicant_notification(applicant)
    @applicant = applicant
    mail(:to => "#{applicant.name} <#{applicant.email}>", :reply_to => applicant.email ,:subject => "Message from web")
  end
end


