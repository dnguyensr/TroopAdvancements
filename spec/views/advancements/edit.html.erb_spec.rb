require 'rails_helper'

RSpec.describe "advancements/edit", type: :view do
  before(:each) do
    @advancement = assign(:advancement, Advancement.create!(
      :user_id => 1
    ))
  end

  it "renders the edit advancement form" do
    render

    assert_select "form[action=?][method=?]", advancement_path(@advancement), "post" do

      assert_select "input#advancement_user_id[name=?]", "advancement[user_id]"
    end
  end
end
