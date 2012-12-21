require 'spec_helper'

describe "prices/index" do
  before(:each) do
    assign(:prices, [
      stub_model(Price,
        :class => "Class",
        :price => 1.5,
        :single => 1.5,
        :internal_air => 1.5,
        :available => "Available",
        :party => 1,
        :travel_id => 2
      ),
      stub_model(Price,
        :class => "Class",
        :price => 1.5,
        :single => 1.5,
        :internal_air => 1.5,
        :available => "Available",
        :party => 1,
        :travel_id => 2
      )
    ])
  end

  it "renders a list of prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Class".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Available".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
