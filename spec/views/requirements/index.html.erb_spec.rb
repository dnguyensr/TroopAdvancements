require 'rails_helper'

RSpec.describe "requirements/index", type: :view do
  before(:each) do
    assign(:requirements, [
      Requirement.create!(
        :number => 2,
        :description => "MyText",
        :rank_id => 3
      ),
      Requirement.create!(
        :number => 2,
        :description => "MyText",
        :rank_id => 3
      )
    ])
  end

  it "renders a list of requirements" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
