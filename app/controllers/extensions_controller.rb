class ExtensionsController < InheritedResources::Base
  belongs_to :offer_season, :finder => :find_by_slug!
  belongs_to :travel, :finder => :find_by_slug!



  def create
    create! { offer_season_travel_path(@offer_season, @travel) }
  end

  def update
    update! { offer_season_travel_path(@offer_season, @travel) }
  end

  def destroy
    destroy! { offer_season_travel_path(@offer_season, @travel) }
  end

end
