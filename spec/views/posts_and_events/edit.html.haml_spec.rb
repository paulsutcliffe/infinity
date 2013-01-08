require 'spec_helper'

describe "posts_and_events/edit" do
  before(:each) do
    @posts_and_event = assign(:posts_and_event, stub_model(PostsAndEvent,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit posts_and_event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_and_events_path(@posts_and_event), :method => "post" do
      assert_select "input#posts_and_event_title", :name => "posts_and_event[title]"
      assert_select "textarea#posts_and_event_description", :name => "posts_and_event[description]"
    end
  end
end
