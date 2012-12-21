require 'spec_helper'

describe "press_releases/index" do
  before(:each) do
    assign(:press_releases, [
      stub_model(PressRelease,
        :title => "Title"
      ),
      stub_model(PressRelease,
        :title => "Title"
      )
    ])
  end

  it "renders a list of press_releases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
