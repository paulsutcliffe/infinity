require 'spec_helper'

describe "applicants/new" do
  before(:each) do
    assign(:applicant, stub_model(Applicant,
      :name => "MyString",
      :last_name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :department => "MyString",
      :city => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new applicant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => applicants_path, :method => "post" do
      assert_select "input#applicant_name", :name => "applicant[name]"
      assert_select "input#applicant_last_name", :name => "applicant[last_name]"
      assert_select "input#applicant_address1", :name => "applicant[address1]"
      assert_select "input#applicant_address2", :name => "applicant[address2]"
      assert_select "input#applicant_department", :name => "applicant[department]"
      assert_select "input#applicant_city", :name => "applicant[city]"
      assert_select "input#applicant_postal_code", :name => "applicant[postal_code]"
      assert_select "input#applicant_country", :name => "applicant[country]"
      assert_select "input#applicant_phone", :name => "applicant[phone]"
    end
  end
end
