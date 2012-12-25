require 'spec_helper'

describe "packs/new" do
  before(:each) do
    assign(:pack, stub_model(Pack,
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new pack form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => packs_path, :method => "post" do
      assert_select "input#pack_title", :name => "pack[title]"
      assert_select "textarea#pack_description", :name => "pack[description]"
      assert_select "input#pack_slug", :name => "pack[slug]"
    end
  end
end
