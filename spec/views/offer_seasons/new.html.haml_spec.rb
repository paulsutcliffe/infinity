require 'spec_helper'

describe "offer_seasons/new" do
  before(:each) do
    assign(:offer_season, stub_model(OfferSeason,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new offer_season form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offer_seasons_path, :method => "post" do
      assert_select "input#offer_season_title", :name => "offer_season[title]"
    end
  end
end
