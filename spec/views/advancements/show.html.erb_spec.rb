require 'rails_helper'

RSpec.describe "advancements/show", type: :view do
  before(:each) do
    @advancement = assign(:advancement, Advancement.create!(
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
