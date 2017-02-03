require 'rails_helper'

RSpec.describe "ranks/show", type: :view do
  before(:each) do
    @rank = assign(:rank, Rank.create!(
      :name => "Rank",
      :description => "MyText",
      :advancement_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rank/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
