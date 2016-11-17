require 'rails_helper'

RSpec.describe "requirements/new", type: :view do
  before(:each) do
    assign(:requirement, Requirement.new(
      :number => 1,
      :description => "MyText",
      :rank_id => 1
    ))
  end

  it "renders new requirement form" do
    render

    assert_select "form[action=?][method=?]", requirements_path, "post" do

      assert_select "input#requirement_number[name=?]", "requirement[number]"

      assert_select "textarea#requirement_description[name=?]", "requirement[description]"

      assert_select "input#requirement_rank_id[name=?]", "requirement[rank_id]"
    end
  end
end
