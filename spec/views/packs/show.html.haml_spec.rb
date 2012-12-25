require 'spec_helper'

describe "packs/show" do
  before(:each) do
    @pack = assign(:pack, stub_model(Pack,
      :title => "Title",
      :description => "MyText",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Slug/)
  end
end
