require 'spec_helper'

describe "press_releases/edit" do
  before(:each) do
    @press_release = assign(:press_release, stub_model(PressRelease,
      :title => "MyString"
    ))
  end

  it "renders the edit press_release form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => press_releases_path(@press_release), :method => "post" do
      assert_select "input#press_release_title", :name => "press_release[title]"
    end
  end
end
