require 'spec_helper'

describe "countries/index" do
  before(:each) do
    assign(:countries, [
      stub_model(Country,
        :name => "Name",
        :time_zone => "Time Zone",
        :weather => "Weather",
        :voltage => "Voltage",
        :currency => "Currency",
        :description => "MyText",
        :image_map => "MyText",
        :destination_id => 1
      ),
      stub_model(Country,
        :name => "Name",
        :time_zone => "Time Zone",
        :weather => "Weather",
        :voltage => "Voltage",
        :currency => "Currency",
        :description => "MyText",
        :image_map => "MyText",
        :destination_id => 1
      )
    ])
  end

  it "renders a list of countries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Time Zone".to_s, :count => 2
    assert_select "tr>td", :text => "Weather".to_s, :count => 2
    assert_select "tr>td", :text => "Voltage".to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
