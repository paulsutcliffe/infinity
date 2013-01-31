class HealthsController < InheritedResources::Base



def create
  create! { healths_path }
end

def update
  update { healths_path }
end

end
