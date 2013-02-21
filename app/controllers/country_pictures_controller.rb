class CountryPicturesController < InheritedResources::Base
belongs_to :country

def create
  create!(:notice => 'Picture created successfully.') {destination_country_path(@country.destination, @country)}
end

def update
  update!(:notice => 'Picture updated successfully.') {destination_country_path(@country.destination, @country)}
end

def destroy
  destroy!(:notice => 'Picture deleted successfully.') {destination_country_path(@country.destination, @country)}
end

end
