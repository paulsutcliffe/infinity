require 'spec_helper'

describe "destination_pictures/show" do
  before(:each) do
    @destination_picture = assign(:destination_picture, stub_model(DestinationPicture,
      :destination_picture_file_name => "Destination Picture File Name",
      :destination_picture_content_type => "Destination Picture Content Type",
      :destination_picture_file_size => 1,
      :destination_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Destination Picture File Name/)
    rendered.should match(/Destination Picture Content Type/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
