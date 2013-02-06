class CountriesController < InheritedResources::Base
belongs_to :destination, :finder => :find_by_slug!

def show
  # view
  @destination = Destination.find(params[:destination_id])
  @country = @destination.countries.find(params[:id])
  @country_pictures = @country.country_pictures.all

  # sidebar
  @countries = @destination.countries.all
end

def create
  create! (:notice => 'Country created successfully.'){ destination_country_path(@destination, @country) }
end

def update
  update! (:notice => 'Country updated successfully.') {destination_country_path(@destination, @country)}
end

def destroy
  destroy! (:notice => 'Country destroyed successfully.') {destination_path(@destination)}
end

end
