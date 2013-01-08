class MaintenanceController < ApplicationController


def index

  respond_to do |format|
    format.html { render :layout => 'maintenance' }
  end
end

end
