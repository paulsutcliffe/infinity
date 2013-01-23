class HotelsController < InheritedResources::Base
  belongs_to :travel, :finder => :find_by_slug!

  def create
    create! { offer_season_travel_path(@travel.offer_season, @travel) }
  end

  def update
    update! { offer_season_travel_path(@travel.offer_season, @travel) }
  end

  def destroy
    destroy! { offer_season_travel_path(@travel.offer_season, @travel) }
  end

end
