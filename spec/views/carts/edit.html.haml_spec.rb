require 'spec_helper'

describe "carts/edit" do
  before(:each) do
    @cart = assign(:cart, stub_model(Cart,
      :quantity => 1,
      :travel_id => 1
    ))
  end

  it "renders the edit cart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => carts_path(@cart), :method => "post" do
      assert_select "input#cart_quantity", :name => "cart[quantity]"
      assert_select "input#cart_travel_id", :name => "cart[travel_id]"
    end
  end
end
