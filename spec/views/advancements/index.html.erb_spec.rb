require 'rails_helper'

RSpec.describe "advancements/index", type: :view do
  before(:each) do
    assign(:advancements, [
      Advancement.create!(
        :user_id => 2
      ),
      Advancement.create!(
        :user_id => 2
      )
    ])
  end

  it "renders a list of advancements" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
