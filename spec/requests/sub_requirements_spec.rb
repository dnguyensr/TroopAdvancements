require 'rails_helper'

RSpec.describe "SubRequirements", type: :request do
  describe "GET /sub_requirements" do
    it "works! (now write some real specs)" do
      get sub_requirements_path
      expect(response).to have_http_status(200)
    end
  end
end
