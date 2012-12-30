require 'spec_helper'

describe "offers/edit" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path(@offer), :method => "post" do
      assert_select "input#offer_title", :name => "offer[title]"
      assert_select "textarea#offer_description", :name => "offer[description]"
      assert_select "input#offer_slug", :name => "offer[slug]"
    end
  end
end
