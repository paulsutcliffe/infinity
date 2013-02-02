class PartnersController < InheritedResources::Base



def create
  create! { partners_path }
end

def update
  update { partners_path }
end

end
