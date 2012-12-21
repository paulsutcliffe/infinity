require 'spec_helper'

describe "countries/show" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :name => "Name",
      :time_zone => "Time Zone",
      :weather => "Weather",
      :voltage => "Voltage",
      :currency => "Currency",
      :description => "MyText",
      :image_map => "MyText",
      :destination_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Time Zone/)
    rendered.should match(/Weather/)
    rendered.should match(/Voltage/)
    rendered.should match(/Currency/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
