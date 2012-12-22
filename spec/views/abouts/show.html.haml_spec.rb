require 'spec_helper'

describe "abouts/show" do
  before(:each) do
    @about = assign(:about, stub_model(About))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
