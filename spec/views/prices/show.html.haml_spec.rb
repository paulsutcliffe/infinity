require 'spec_helper'

describe "prices/show" do
  before(:each) do
    @price = assign(:price, stub_model(Price,
      :class => "Class",
      :price => 1.5,
      :single => 1.5,
      :internal_air => 1.5,
      :available => "Available",
      :party => 1,
      :travel_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Class/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Available/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
