class OffersController < InheritedResources::Base
belongs_to :offer_season, :finder => :find_by_slug!

def index
 # @offers = Offer.all#.where('id NOT IN (SELECT DISTINCT(offer_id) FROM offer_seasons)')
  @offers = Offer.find(:all, :conditions => ['offer_type = ?', 'Fuera de Temporada'])

  @offer_seasons = OfferSeason.all
end

def show
  @offer = Offer.find(params[:id])
  @offers = Offer.all

  @offer_season = OfferSeason.find(params[:offer_season_id])
  @offer_seasons = @offer_season.offers.all
end

# def new_item
#  @offer_season = OfferSeason.find(params[:offer_season_id])
#  @offer = @offer_season.offers.new
 # @offer = @offer_Season.offers.new

 
 # @offer = Offer.new

# end



end
