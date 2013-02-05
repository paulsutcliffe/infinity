require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :title => "MyString",
      :email => "MyString",
      :comment => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path(@booking), :method => "post" do
      assert_select "input#booking_title", :name => "booking[title]"
      assert_select "input#booking_email", :name => "booking[email]"
      assert_select "textarea#booking_comment", :name => "booking[comment]"
      assert_select "input#booking_slug", :name => "booking[slug]"
    end
  end
end
