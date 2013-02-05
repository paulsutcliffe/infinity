require 'spec_helper'

describe "bookings/show" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :title => "Title",
      :email => "Email",
      :comment => "MyText",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/Slug/)
  end
end
