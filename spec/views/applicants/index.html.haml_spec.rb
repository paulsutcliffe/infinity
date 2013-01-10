require 'spec_helper'

describe "applicants/index" do
  before(:each) do
    assign(:applicants, [
      stub_model(Applicant,
        :name => "Name",
        :last_name => "Last Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :department => "Department",
        :city => "City",
        :postal_code => "Postal Code",
        :country => "Country",
        :phone => "Phone"
      ),
      stub_model(Applicant,
        :name => "Name",
        :last_name => "Last Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :department => "Department",
        :city => "City",
        :postal_code => "Postal Code",
        :country => "Country",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of applicants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
