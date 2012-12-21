require 'spec_helper'

describe "press_releases/show" do
  before(:each) do
    @press_release = assign(:press_release, stub_model(PressRelease,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
