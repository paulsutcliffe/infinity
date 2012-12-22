class AboutsController < InheritedResources::Base


  def history

    respond_to do |format|
      format.html
      format.xml { render :xml => @clients }
    end
  end
end
