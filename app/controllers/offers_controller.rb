class OffersController < InheritedResources::Base
belongs_to :offer_season, :finder => :find_by_slug!

def index
 # @offer_season = OfferSeason.find(params[:offer_season_id])
  @offers_sidebar = Offer.find(:all, :conditions => ['offer_type = ?', 'Fuera de Temporada'])

  @offer_seasons_sidebar = OfferSeason.all - OfferSeason.find_by_id(39)
end

def show
  # sidebar
  @offers_sidebar = Offer.find(:all, :conditions => ['offer_type = ?', 'Fuera de Temporada'])
  @offer_seasons_sidebar = OfferSeason.all - OfferSeason.find_by_id(39)

  # show
  @offer = Offer.find(params[:id])

  @offer_season = OfferSeason.find(params[:offer_season_id])
  @offer_seasons = @offer_season.offers.all

end

# def create
#   @offer_season = OfferSeason.find(params[:offer_season_id])
#   @offer = @offer_season.offers.build(params[:offer]).new
# end




end
