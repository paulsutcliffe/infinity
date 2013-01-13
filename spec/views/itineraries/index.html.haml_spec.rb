require 'spec_helper'

describe "itineraries/index" do
  before(:each) do
    assign(:itineraries, [
      stub_model(Itinerary,
        :day => "Day",
        :description => "MyText",
        :slug => "Slug",
        :travel_id => 1
      ),
      stub_model(Itinerary,
        :day => "Day",
        :description => "MyText",
        :slug => "Slug",
        :travel_id => 1
      )
    ])
  end

  it "renders a list of itineraries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Day".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
