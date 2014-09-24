class TravelsController < InheritedResources::Base
# belongs_to :offer_season, :finder => :find_by_slug!

  def index
    # @offer_season = OfferSeason.find(params[:offer_season_id])
    @travels_sidebar = Travel.find(:all, :conditions => ['travel_type = ?', 'Fuera de Temporada'])

    @travel_seasons_sidebar = OfferSeason.all # - OfferSeason.find_by_id(39)
    @travels = Travel.all
  end

  def show
    # sidebar
    @country = Country.find(params[:country_id])
    @country_travels = @country.travels

    # render show
    @travel = Travel.find(params[:id])
    @itineraries = @travel.itineraries.all
    @prices = @travel.prices.all
    @extensions = @travel.extensions.all
  end

  def new
    #call id from offer_season
    @offer_season = OfferSeason.find(params[:offer_season_id])

    @travel = @offer_season.travels.new
    @travel_back = @offer_season.travels.all
  end

  def update
    update!{ country_travel_path(@travel.country, @travel) }
  end

  def destroy
    destroy!{ country_travel_path(@travel.country, @travel) }
  end

end
