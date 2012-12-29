class CountryPicturesController < InheritedResources::Base
belongs_to :country

def create
  create! {destination_country_path(@country.destination, @country)}
end

def update
  update! {destination_country_path(@country.destination, @country)}
end

def destroy
  destroy! {destination_country_path(@country.destination, @country)}
end

end
