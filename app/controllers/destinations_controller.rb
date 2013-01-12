class DestinationsController < InheritedResources::Base


  def show
    @destination = Destination.find(params[:id])
    @countries = @destination.countries.order('name ASC')

    @destination_pictures = @destination.destination_pictures.all
  end


  def update
    update! { destination_path(@destination) }
  end

end
