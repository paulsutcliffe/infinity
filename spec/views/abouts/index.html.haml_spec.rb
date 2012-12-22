require 'spec_helper'

describe "abouts/index" do
  before(:each) do
    assign(:abouts, [
      stub_model(About),
      stub_model(About)
    ])
  end

  it "renders a list of abouts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
