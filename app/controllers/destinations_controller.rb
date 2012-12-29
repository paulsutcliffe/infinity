class DestinationsController < InheritedResources::Base


def show
  @destination = Destination.find(params[:id])
  @countries = @destination.countries.order('name ASC')

  @destination_pictures = @destination.destination_pictures.all
end

def create
  create! { new_destination_country_path(@destination) }
end

def update
  update! { destinations_path }
end

def destroy
  destroy! { destinations_path }
end

end
