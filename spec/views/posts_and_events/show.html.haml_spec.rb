require 'spec_helper'

describe "posts_and_events/show" do
  before(:each) do
    @posts_and_event = assign(:posts_and_event, stub_model(PostsAndEvent,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
