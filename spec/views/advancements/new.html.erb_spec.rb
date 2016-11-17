require 'rails_helper'

RSpec.describe "advancements/new", type: :view do
  before(:each) do
    assign(:advancement, Advancement.new(
      :user_id => 1
    ))
  end

  it "renders new advancement form" do
    render

    assert_select "form[action=?][method=?]", advancements_path, "post" do

      assert_select "input#advancement_user_id[name=?]", "advancement[user_id]"
    end
  end
end
