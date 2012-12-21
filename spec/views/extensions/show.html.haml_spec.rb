require 'spec_helper'

describe "extensions/show" do
  before(:each) do
    @extension = assign(:extension, stub_model(Extension,
      :travel_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
