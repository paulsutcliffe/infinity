require 'spec_helper'

describe "offer_seasons/index" do
  before(:each) do
    assign(:offer_seasons, [
      stub_model(OfferSeason,
        :title => "Title"
      ),
      stub_model(OfferSeason,
        :title => "Title"
      )
    ])
  end

  it "renders a list of offer_seasons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
