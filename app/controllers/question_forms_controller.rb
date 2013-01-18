class QuestionFormsController < ApplicationController
  def new
    @question_form = QuestionForm.new
  end

  def create
    begin
        @question_form = QuestionForm.new(params[:question_form])
        @question_form.request = request
        if @question_form.deliver
          flash.now[:notice] = 'Thank you for your message!'
        else
          render :new
        end
      rescue ScriptError
        flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
      end
  end

end
