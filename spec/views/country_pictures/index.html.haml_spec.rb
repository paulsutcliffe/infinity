require 'spec_helper'

describe "country_pictures/index" do
  before(:each) do
    assign(:country_pictures, [
      stub_model(CountryPicture,
        :country_picture_file_name => "Country Picture File Name",
        :country_picture_content_type => "Country Picture Content Type",
        :country_picture_file_size => "",
        :country_id => 1
      ),
      stub_model(CountryPicture,
        :country_picture_file_name => "Country Picture File Name",
        :country_picture_content_type => "Country Picture Content Type",
        :country_picture_file_size => "",
        :country_id => 1
      )
    ])
  end

  it "renders a list of country_pictures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country Picture File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Country Picture Content Type".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
