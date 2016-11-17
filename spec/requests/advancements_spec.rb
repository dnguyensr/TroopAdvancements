require 'rails_helper'

RSpec.describe "Advancements", type: :request do
  describe "GET /advancements" do
    it "works! (now write some real specs)" do
      get advancements_path
      expect(response).to have_http_status(200)
    end
  end
end
