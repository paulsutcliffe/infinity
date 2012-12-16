require 'spec_helper'

describe "members/edit" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :name => "MyString",
      :email => "MyString",
      :position => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path(@member), :method => "post" do
      assert_select "input#member_name", :name => "member[name]"
      assert_select "input#member_email", :name => "member[email]"
      assert_select "input#member_position", :name => "member[position]"
      assert_select "textarea#member_description", :name => "member[description]"
    end
  end
end
