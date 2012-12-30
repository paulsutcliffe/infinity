require 'spec_helper'

describe "offer_seasons/show" do
  before(:each) do
    @offer_season = assign(:offer_season, stub_model(OfferSeason,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
