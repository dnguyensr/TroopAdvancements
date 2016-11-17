require 'rails_helper'

RSpec.describe "requirements/edit", type: :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :number => 1,
      :description => "MyText",
      :rank_id => 1
    ))
  end

  it "renders the edit requirement form" do
    render

    assert_select "form[action=?][method=?]", requirement_path(@requirement), "post" do

      assert_select "input#requirement_number[name=?]", "requirement[number]"

      assert_select "textarea#requirement_description[name=?]", "requirement[description]"

      assert_select "input#requirement_rank_id[name=?]", "requirement[rank_id]"
    end
  end
end
