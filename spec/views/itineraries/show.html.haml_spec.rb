require 'spec_helper'

describe "itineraries/show" do
  before(:each) do
    @itinerary = assign(:itinerary, stub_model(Itinerary,
      :day => "Day",
      :description => "MyText",
      :slug => "Slug",
      :travel_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Day/)
    rendered.should match(/MyText/)
    rendered.should match(/Slug/)
    rendered.should match(/1/)
  end
end
