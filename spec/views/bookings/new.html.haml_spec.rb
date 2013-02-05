require 'spec_helper'

describe "bookings/new" do
  before(:each) do
    assign(:booking, stub_model(Booking,
      :title => "MyString",
      :email => "MyString",
      :comment => "MyText",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path, :method => "post" do
      assert_select "input#booking_title", :name => "booking[title]"
      assert_select "input#booking_email", :name => "booking[email]"
      assert_select "textarea#booking_comment", :name => "booking[comment]"
      assert_select "input#booking_slug", :name => "booking[slug]"
    end
  end
end
