require 'spec_helper'

describe "countries/new" do
  before(:each) do
    assign(:country, stub_model(Country,
      :name => "MyString",
      :time_zone => "MyString",
      :weather => "MyString",
      :voltage => "MyString",
      :currency => "MyString",
      :description => "MyText",
      :image_map => "MyText",
      :destination_id => 1
    ).as_new_record)
  end

  it "renders new country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => countries_path, :method => "post" do
      assert_select "input#country_name", :name => "country[name]"
      assert_select "input#country_time_zone", :name => "country[time_zone]"
      assert_select "input#country_weather", :name => "country[weather]"
      assert_select "input#country_voltage", :name => "country[voltage]"
      assert_select "input#country_currency", :name => "country[currency]"
      assert_select "textarea#country_description", :name => "country[description]"
      assert_select "textarea#country_image_map", :name => "country[image_map]"
      assert_select "input#country_destination_id", :name => "country[destination_id]"
    end
  end
end
