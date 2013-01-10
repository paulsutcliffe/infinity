require 'spec_helper'

describe "applicants/show" do
  before(:each) do
    @applicant = assign(:applicant, stub_model(Applicant,
      :name => "Name",
      :last_name => "Last Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :department => "Department",
      :city => "City",
      :postal_code => "Postal Code",
      :country => "Country",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/Department/)
    rendered.should match(/City/)
    rendered.should match(/Postal Code/)
    rendered.should match(/Country/)
    rendered.should match(/Phone/)
  end
end
