require 'rails_helper'

RSpec.describe "ranks/index", type: :view do
  before(:each) do
    assign(:ranks, [
      Rank.create!(
        :name => "Rank",
        :description => "MyText",
        :advancement_id => 2
      ),
      Rank.create!(
        :name => "Rank",
        :description => "MyText",
        :advancement_id => 2
      )
    ])
  end

  it "renders a list of ranks" do
    render
    assert_select "tr>td", :text => "Rank".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
