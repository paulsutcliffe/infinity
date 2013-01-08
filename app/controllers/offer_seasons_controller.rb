class OfferSeasonsController < InheritedResources::Base

def index
 # render sidebar
  @offers_sidebar = Offer.find(:all, :conditions => ['offer_type = ?', 'Fuera de Temporada'])
  @offer_seasons_sidebar = OfferSeason.all


  @offer_season = OfferSeason.find(params[:id])
  @offer_seasons = OfferSeason.all

end

def show
  # render sidebar
  @offers_sidebar_ = OfferSeason.find(params[:id])
  @offers_sidebar = @offers_sidebar_.offers

  @fuera_de_temporada = Offer.find(:all, :conditions => ['offer_type = ?', 'Fuera de Temporada'])

  @offer_seasons_sidebar = OfferSeason.all

  # show
  @offer_season = OfferSeason.find(params[:id])
  @offer_seasons_list = @offer_season.offers# , :conditions => ['offer_type = ?', params[:id]] ) if params[:id].present?
  
  

 # @offers = Offer.all
  #@offers = Offer.where('id NOT IN (SELECT DISTINCT(offer_season_id) FROM offer_seasons)')
 # @offers = Offer.where('id NOT IN (SELECT ALL(offer_season_id) FROM offer_seasons)')

 # @offer_seasons = @offer_season.offers.where('id NOT IN (SELECT DISTINCT(offer_season_id) FROM offers)')
 # @offer_seasons = Offer.offer_seasons.find_by_offer_season_id()


end



def create
  create! { offers_path }
end



end
