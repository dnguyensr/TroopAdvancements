require 'rails_helper'

RSpec.describe "ranks/new", type: :view do
  before(:each) do
    assign(:rank, Rank.new(
      :rank => "MyString",
      :description => "MyText",
      :advancement_id => 1
    ))
  end

  it "renders new rank form" do
    render

    assert_select "form[action=?][method=?]", ranks_path, "post" do

      assert_select "input#rank_rank[name=?]", "rank[rank]"

      assert_select "textarea#rank_description[name=?]", "rank[description]"

      assert_select "input#rank_advancement_id[name=?]", "rank[advancement_id]"
    end
  end
end
