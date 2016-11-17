require 'rails_helper'

RSpec.describe "ranks/edit", type: :view do
  before(:each) do
    @rank = assign(:rank, Rank.create!(
      :rank => "MyString",
      :description => "MyText",
      :advancement_id => 1
    ))
  end

  it "renders the edit rank form" do
    render

    assert_select "form[action=?][method=?]", rank_path(@rank), "post" do

      assert_select "input#rank_rank[name=?]", "rank[rank]"

      assert_select "textarea#rank_description[name=?]", "rank[description]"

      assert_select "input#rank_advancement_id[name=?]", "rank[advancement_id]"
    end
  end
end
