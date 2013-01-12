class TravelsController < InheritedResources::Base
belongs_to :offer_season, :finder => :find_by_slug!

def index
 # @offer_season = OfferSeason.find(params[:offer_season_id])
  @travels_sidebar = Travel.find(:all, :conditions => ['travel_type = ?', 'Fuera de Temporada'])

  @travel_seasons_sidebar = OfferSeason.all # - OfferSeason.find_by_id(39)
end

def show
  # sidebar
  @travels_sidebar = Travel.find(:all, :conditions => ['travel_type = ?', 'Fuera de Temporada'])
  @travel_seasons_sidebar = OfferSeason.all - OfferSeason.find_by_id(39)

  # show
  @offer = Travel.find(params[:id])

  @offer_season = OfferSeason.find(params[:offer_season_id])
  @offer_seasons = @offer_season.offers.all

end

end
