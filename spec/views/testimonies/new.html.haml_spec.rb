require 'spec_helper'

describe "testimonies/new" do
  before(:each) do
    assign(:testimony, stub_model(Testimony,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new testimony form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testimonies_path, :method => "post" do
      assert_select "input#testimony_name", :name => "testimony[name]"
      assert_select "textarea#testimony_description", :name => "testimony[description]"
    end
  end
end
