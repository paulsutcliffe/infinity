require 'spec_helper'

describe "milestones/index" do
  before(:each) do
    assign(:milestones, [
      stub_model(Milestone,
        :title => "Title",
        :description => "MyText",
        :telefono2 => "Telefono2"
      ),
      stub_model(Milestone,
        :title => "Title",
        :description => "MyText",
        :telefono2 => "Telefono2"
      )
    ])
  end

  it "renders a list of milestones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono2".to_s, :count => 2
  end
end
