class PacksController < InheritedResources::Base

def index
  @packs = Pack.all
  @first_pack = Pack.limit(1)
end

def show
  @pack = Pack.find(params[:id])
  @packs = Pack.all # needed for sidebar, probably better to use a cell for this
  respond_to do |format|
    format.html # show.html.erb
    format.js # show.js.erb
  end
end

end
