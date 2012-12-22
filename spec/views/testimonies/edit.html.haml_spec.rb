require 'spec_helper'

describe "testimonies/edit" do
  before(:each) do
    @testimony = assign(:testimony, stub_model(Testimony,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit testimony form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testimonies_path(@testimony), :method => "post" do
      assert_select "input#testimony_name", :name => "testimony[name]"
      assert_select "textarea#testimony_description", :name => "testimony[description]"
    end
  end
end
