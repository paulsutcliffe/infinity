class CountriesController < InheritedResources::Base
belongs_to :destination, :finder => :find_by_slug!

 # def show
 #   @destination = Destination.find(params[:id])
 #   @countries = @destination.countries.find(params[:id])
 # end

def create
  create! { destination_countries_path(@destination) }
end

end
