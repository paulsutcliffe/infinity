class CountriesController < InheritedResources::Base
belongs_to :destination, :finder => :find_by_slug!

 # def show
 #   @destination = Destination.find(params[:id])
 #   @countries = @destination.countries.find(params[:id])
 # end

def show
  @destination = Destination.find(params[:destination_id])
  @country = @destination.countries.find(params[:id])

  @country_pictures = @country.country_pictures.all
end

def create
  create! { destination_countries_path(@destination) }
end

def update
  update! {destination_countries_path(@destination)}
end

def destroy
  destroy! {destination_countries_path(@destination)}
end

end
