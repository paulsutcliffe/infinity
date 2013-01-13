require 'spec_helper'

describe "itineraries/edit" do
  before(:each) do
    @itinerary = assign(:itinerary, stub_model(Itinerary,
      :day => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :travel_id => 1
    ))
  end

  it "renders the edit itinerary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => itineraries_path(@itinerary), :method => "post" do
      assert_select "input#itinerary_day", :name => "itinerary[day]"
      assert_select "textarea#itinerary_description", :name => "itinerary[description]"
      assert_select "input#itinerary_slug", :name => "itinerary[slug]"
      assert_select "input#itinerary_travel_id", :name => "itinerary[travel_id]"
    end
  end
end
