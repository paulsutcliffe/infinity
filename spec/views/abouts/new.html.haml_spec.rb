require 'spec_helper'

describe "abouts/new" do
  before(:each) do
    assign(:about, stub_model(About).as_new_record)
  end

  it "renders new about form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => abouts_path, :method => "post" do
    end
  end
end
