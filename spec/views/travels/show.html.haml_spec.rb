require 'spec_helper'

describe "travels/show" do
  before(:each) do
    @travel = assign(:travel, stub_model(Travel,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Price/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/4/)
  end
end
