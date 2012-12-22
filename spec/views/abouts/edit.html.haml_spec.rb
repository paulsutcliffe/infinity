require 'spec_helper'

describe "abouts/edit" do
  before(:each) do
    @about = assign(:about, stub_model(About))
  end

  it "renders the edit about form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => abouts_path(@about), :method => "post" do
    end
  end
end
