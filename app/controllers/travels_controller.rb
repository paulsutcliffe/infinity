class TravelsController < InheritedResources::Base
belongs_to :offer_season, :finder => :find_by_slug!



def index
 # @offer_season = OfferSeason.find(params[:offer_season_id])
  @travels_sidebar = Travel.find(:all, :conditions => ['travel_type = ?', 'Fuera de Temporada'])

  @travel_seasons_sidebar = OfferSeason.all # - OfferSeason.find_by_id(39)
end

def show
  #call id from offer season
  @offer_season = OfferSeason.find(params[:offer_season_id])

  # render _sidebar
  @offer_season_travels_sidebar = @offer_season.travels.all
  @offer_seasons_sidebar = OfferSeason.all

  # render show
  @travel = @offer_season.travels.find(params[:id])
  @itineraries = @travel.itineraries.all
  @prices = @travel.prices.all
  @extensions = @travel.extensions.all


end

def update
  update!{ offer_season_travel_path(@offer_season, @travel) }
end

def destroy
  destroy!{ offer_season_path(@offer_season) }
end



end
