class DestinationPicturesController < InheritedResources::Base

belongs_to :destination



def create
  create! { destination_path(@destination) }
end 

def update
  update! { destination_path(@destination) }
end

def destroy
  destroy! { destination_path(@destination) }
end


end
