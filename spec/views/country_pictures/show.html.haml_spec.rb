require 'spec_helper'

describe "country_pictures/show" do
  before(:each) do
    @country_picture = assign(:country_picture, stub_model(CountryPicture,
      :country_picture_file_name => "Country Picture File Name",
      :country_picture_content_type => "Country Picture Content Type",
      :country_picture_file_size => "",
      :country_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country Picture File Name/)
    rendered.should match(/Country Picture Content Type/)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
