class PacksController < InheritedResources::Base

def index
  @packs = Pack.all
  @first_pack = Pack.limit(1)
end


end
