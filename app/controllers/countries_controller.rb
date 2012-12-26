class CountriesController < InheritedResources::Base
belongs_to :destination, :finder => :find_by_slug!


def create
  create! { destination_countries_path(@destination) }
end

end
