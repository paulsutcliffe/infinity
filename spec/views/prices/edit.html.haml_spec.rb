require 'spec_helper'

describe "prices/edit" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :class => "MyString",
      :price => 1.5,
      :single => 1.5,
      :internal_air => 1.5,
      :available => "MyString",
      :party => 1,
      :travel_id => 1
    ))
  end

  it "renders the edit price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prices_path(@price), :method => "post" do
      assert_select "input#price_class", :name => "price[class]"
      assert_select "input#price_price", :name => "price[price]"
      assert_select "input#price_single", :name => "price[single]"
      assert_select "input#price_internal_air", :name => "price[internal_air]"
      assert_select "input#price_available", :name => "price[available]"
      assert_select "input#price_party", :name => "price[party]"
      assert_select "input#price_travel_id", :name => "price[travel_id]"
    end
  end
end
