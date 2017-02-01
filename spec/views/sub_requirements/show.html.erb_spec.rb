require 'rails_helper'

RSpec.describe "sub_requirements/show", type: :view do
  before(:each) do
    @sub_requirement = assign(:sub_requirement, SubRequirement.create!(
      :requirement_id => 2,
      :part => "Part",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Part/)
    expect(rendered).to match(/MyText/)
  end
end
