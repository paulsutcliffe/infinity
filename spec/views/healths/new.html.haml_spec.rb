require 'spec_helper'

describe "healths/new" do
  before(:each) do
    assign(:health, stub_model(Health,
      :title => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new health form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => healths_path, :method => "post" do
      assert_select "input#health_title", :name => "health[title]"
      assert_select "input#health_url", :name => "health[url]"
    end
  end
end
