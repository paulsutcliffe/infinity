require 'spec_helper'

describe "carts/new" do
  before(:each) do
    assign(:cart, stub_model(Cart,
      :quantity => 1,
      :travel_id => 1
    ).as_new_record)
  end

  it "renders new cart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => carts_path, :method => "post" do
      assert_select "input#cart_quantity", :name => "cart[quantity]"
      assert_select "input#cart_travel_id", :name => "cart[travel_id]"
    end
  end
end
