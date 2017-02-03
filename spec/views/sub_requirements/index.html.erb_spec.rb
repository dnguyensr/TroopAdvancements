require 'rails_helper'

RSpec.describe "sub_requirements/index", type: :view do
  before(:each) do
    assign(:sub_requirements, [
      SubRequirement.create!(
        :requirement_id => 2,
        :part => "Part",
        :description => "MyText"
      ),
      SubRequirement.create!(
        :requirement_id => 2,
        :part => "Part",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of sub_requirements" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Part".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
