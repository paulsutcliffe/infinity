require 'spec_helper'

describe "travels/new" do
  before(:each) do
    assign(:travel, stub_model(Travel,
      :name => "MyString",
      :overview => "MyText",
      :advantages => "MyText",
      :price => "MyString",
      :days => 1,
      :departures => 1,
      :maxgroupsize => 1,
      :travel_map => "MyText",
      :notes => "MyText",
      :country_id => 1
    ).as_new_record)
  end

  it "renders new travel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => travels_path, :method => "post" do
      assert_select "input#travel_name", :name => "travel[name]"
      assert_select "textarea#travel_overview", :name => "travel[overview]"
      assert_select "textarea#travel_advantages", :name => "travel[advantages]"
      assert_select "input#travel_price", :name => "travel[price]"
      assert_select "input#travel_days", :name => "travel[days]"
      assert_select "input#travel_departures", :name => "travel[departures]"
      assert_select "input#travel_maxgroupsize", :name => "travel[maxgroupsize]"
      assert_select "textarea#travel_travel_map", :name => "travel[travel_map]"
      assert_select "textarea#travel_notes", :name => "travel[notes]"
      assert_select "input#travel_country_id", :name => "travel[country_id]"
    end
  end
end
