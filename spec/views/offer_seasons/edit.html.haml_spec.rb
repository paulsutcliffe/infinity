require 'spec_helper'

describe "offer_seasons/edit" do
  before(:each) do
    @offer_season = assign(:offer_season, stub_model(OfferSeason,
      :title => "MyString"
    ))
  end

  it "renders the edit offer_season form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offer_seasons_path(@offer_season), :method => "post" do
      assert_select "input#offer_season_title", :name => "offer_season[title]"
    end
  end
end
