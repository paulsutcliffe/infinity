require 'spec_helper'

describe "posts_and_events/index" do
  before(:each) do
    assign(:posts_and_events, [
      stub_model(PostsAndEvent,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(PostsAndEvent,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of posts_and_events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
