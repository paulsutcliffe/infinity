class PricesController < InheritedResources::Base
  belongs_to :offer_season, :finder => :find_by_slug!
  belongs_to :travel, :finder => :find_by_slug!


  def new
    @offer_season = OfferSeason.find(params[:offer_season_id])
    @travel = @offer_season.travels.find(params[:travel_id])
  
    @price = @travel.prices.new
    3.times { @price.travel_days_prices_contents.build }
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @price }
    end 
  end

  def create
    create! { offer_season_travel_path(@travel.offer_season, @travel) }
  end

  def update
    update! { offer_season_travel_path(@travel.offer_season, @travel) }
  end

  def destroy
    destroy! { offer_season_travel_path(@travel.offer_season, @travel)}
  end


end
