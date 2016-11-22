require 'rails_helper'

RSpec.describe "requirements/show", type: :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :number => 2,
      :description => "MyText",
      :rank_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
  end
end
