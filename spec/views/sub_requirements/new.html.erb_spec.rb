require 'rails_helper'

RSpec.describe "sub_requirements/new", type: :view do
  before(:each) do
    assign(:sub_requirement, SubRequirement.new(
      :requirement_id => 1,
      :part => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new sub_requirement form" do
    render

    assert_select "form[action=?][method=?]", sub_requirements_path, "post" do

      assert_select "input#sub_requirement_requirement_id[name=?]", "sub_requirement[requirement_id]"

      assert_select "input#sub_requirement_part[name=?]", "sub_requirement[part]"

      assert_select "textarea#sub_requirement_description[name=?]", "sub_requirement[description]"
    end
  end
end
