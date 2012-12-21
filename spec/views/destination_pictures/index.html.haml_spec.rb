require 'spec_helper'

describe "destination_pictures/index" do
  before(:each) do
    assign(:destination_pictures, [
      stub_model(DestinationPicture,
        :destination_picture_file_name => "Destination Picture File Name",
        :destination_picture_content_type => "Destination Picture Content Type",
        :destination_picture_file_size => 1,
        :destination_id => 2
      ),
      stub_model(DestinationPicture,
        :destination_picture_file_name => "Destination Picture File Name",
        :destination_picture_content_type => "Destination Picture Content Type",
        :destination_picture_file_size => 1,
        :destination_id => 2
      )
    ])
  end

  it "renders a list of destination_pictures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Destination Picture File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Destination Picture Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
