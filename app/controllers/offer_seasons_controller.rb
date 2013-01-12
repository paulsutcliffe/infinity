class OfferSeasonsController < InheritedResources::Base

def index
 # render sidebar
  @offers_sidebar = Travel.find(:all, :conditions => ['offer_type = ?', 'Fuera de Temporada'])
  @offer_seasons_sidebar = OfferSeason.all


  @offer_season = OfferSeason.find(params[:id])
  @offer_seasons = OfferSeason.all

end

def show
  # render sidebar
  @offer_seasons_sidebar_ = OfferSeason.find(params[:id])
  #@travels_sidebar = @offers_sidebar.travels

  @fuera_de_temporada = Travel.find(:all) 

  @offer_seasons_sidebar = OfferSeason.all

  # show
  @offer_season = OfferSeason.find(params[:id])
  @travel_list = @offer_season.travels
  
  

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
