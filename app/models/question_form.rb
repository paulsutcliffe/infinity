class QuestionForm < MailForm::Base

  attribute :name,     :validate => true
  attribute :email
  attribute :message


  def persisted?
    false
  end

  def headers
    {
      :subject => "New Lead",
      :to => "castaneda.mr83@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
