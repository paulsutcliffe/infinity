class OffersController < InheritedResources::Base

def index
  @offers = Offer.all
  @offer_seasons = OfferSeason.all
end



end
