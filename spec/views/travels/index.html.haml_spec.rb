require 'spec_helper'

describe "travels/index" do
  before(:each) do
    assign(:travels, [
      stub_model(Travel,
        :name => "Name",
        :overview => "MyText",
        :advantages => "MyText",
        :price => "Price",
        :days => 1,
        :departures => 2,
        :maxgroupsize => 3,
        :travel_map => "MyText",
        :notes => "MyText",
        :country_id => 4
      ),
      stub_model(Travel,
        :name => "Name",
        :overview => "MyText",
        :advantages => "MyText",
        :price => "Price",
        :days => 1,
        :departures => 2,
        :maxgroupsize => 3,
        :travel_map => "MyText",
        :notes => "MyText",
        :country_id => 4
      )
    ])
  end

  it "renders a list of travels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
