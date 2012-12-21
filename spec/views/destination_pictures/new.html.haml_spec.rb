require 'spec_helper'

describe "destination_pictures/new" do
  before(:each) do
    assign(:destination_picture, stub_model(DestinationPicture,
      :destination_picture_file_name => "MyString",
      :destination_picture_content_type => "MyString",
      :destination_picture_file_size => 1,
      :destination_id => 1
    ).as_new_record)
  end

  it "renders new destination_picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destination_pictures_path, :method => "post" do
      assert_select "input#destination_picture_destination_picture_file_name", :name => "destination_picture[destination_picture_file_name]"
      assert_select "input#destination_picture_destination_picture_content_type", :name => "destination_picture[destination_picture_content_type]"
      assert_select "input#destination_picture_destination_picture_file_size", :name => "destination_picture[destination_picture_file_size]"
      assert_select "input#destination_picture_destination_id", :name => "destination_picture[destination_id]"
    end
  end
end
