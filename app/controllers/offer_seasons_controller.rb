class OfferSeasonsController < InheritedResources::Base

def index
 # render sidebar
  @fuera_de_temporada = Travel.find(:all) 
  @offer_seasons_sidebar = OfferSeason.all


  @offers = Travel.all

end

def show
  # render sidebar
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
  create! { offer_seasons_path }
end

def update
  update! { offer_seasons_path }
end

def destroy
  destroy! { offer_seasons_path }
end



end
