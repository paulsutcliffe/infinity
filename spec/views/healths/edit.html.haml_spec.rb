require 'spec_helper'

describe "healths/edit" do
  before(:each) do
    @health = assign(:health, stub_model(Health,
      :title => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit health form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => healths_path(@health), :method => "post" do
      assert_select "input#health_title", :name => "health[title]"
      assert_select "input#health_url", :name => "health[url]"
    end
  end
end
