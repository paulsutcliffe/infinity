require 'spec_helper'

describe "country_pictures/edit" do
  before(:each) do
    @country_picture = assign(:country_picture, stub_model(CountryPicture,
      :country_picture_file_name => "MyString",
      :country_picture_content_type => "MyString",
      :country_picture_file_size => "",
      :country_id => 1
    ))
  end

  it "renders the edit country_picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => country_pictures_path(@country_picture), :method => "post" do
      assert_select "input#country_picture_country_picture_file_name", :name => "country_picture[country_picture_file_name]"
      assert_select "input#country_picture_country_picture_content_type", :name => "country_picture[country_picture_content_type]"
      assert_select "input#country_picture_country_picture_file_size", :name => "country_picture[country_picture_file_size]"
      assert_select "input#country_picture_country_id", :name => "country_picture[country_id]"
    end
  end
end
