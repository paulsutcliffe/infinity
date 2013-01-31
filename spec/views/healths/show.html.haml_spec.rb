require 'spec_helper'

describe "healths/show" do
  before(:each) do
    @health = assign(:health, stub_model(Health,
      :title => "Title",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Url/)
  end
end
