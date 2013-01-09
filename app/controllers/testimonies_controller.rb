class TestimoniesController < InheritedResources::Base


def create
  create!{testimonies_path}
end

def update
  update!{testimonies_path}
end

def destroy
  destroy!{testimonies_path}
end

end
