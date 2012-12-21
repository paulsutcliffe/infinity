require 'spec_helper'

describe "press_releases/new" do
  before(:each) do
    assign(:press_release, stub_model(PressRelease,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new press_release form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => press_releases_path, :method => "post" do
      assert_select "input#press_release_title", :name => "press_release[title]"
    end
  end
end
