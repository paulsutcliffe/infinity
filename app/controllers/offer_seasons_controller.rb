class OfferSeasonsController < InheritedResources::Base

 # belongs_to :offer


def index
  @offer_seasons = OfferSeason.all
  #@offer_season_id = OfferSeason.find(params[:id])
  #@offers = @offer_season.offers.find(params[:offer_id])

end

def show
  @offer_season = OfferSeason.find(params[:id])
  @offer_seasons = OfferSeason.all
  @offer_seasons_list = @offer_season.offers.order('title ASC')

 # @offers = Offer.all
  #@offers = Offer.where('id NOT IN (SELECT DISTINCT(offer_season_id) FROM offer_seasons)')
 # @offers = Offer.where('id NOT IN (SELECT ALL(offer_season_id) FROM offer_seasons)')
  @offers = Offer.find(:all, :conditions => ['offer_season_id != ?', 'navidad'])

 # @offer_seasons = @offer_season.offers.where('id NOT IN (SELECT DISTINCT(offer_season_id) FROM offers)')
 # @offer_seasons = Offer.offer_seasons.find_by_offer_season_id()


end



def create
  create! { offer_seasons_path }
end



end
