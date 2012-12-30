require 'spec_helper'

describe "offers/new" do
  before(:each) do
    assign(:offer, stub_model(Offer,
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path, :method => "post" do
      assert_select "input#offer_title", :name => "offer[title]"
      assert_select "textarea#offer_description", :name => "offer[description]"
      assert_select "input#offer_slug", :name => "offer[slug]"
    end
  end
end
