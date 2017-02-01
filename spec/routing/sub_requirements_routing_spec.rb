require "rails_helper"

RSpec.describe SubRequirementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sub_requirements").to route_to("sub_requirements#index")
    end

    it "routes to #new" do
      expect(:get => "/sub_requirements/new").to route_to("sub_requirements#new")
    end

    it "routes to #show" do
      expect(:get => "/sub_requirements/1").to route_to("sub_requirements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sub_requirements/1/edit").to route_to("sub_requirements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sub_requirements").to route_to("sub_requirements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sub_requirements/1").to route_to("sub_requirements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sub_requirements/1").to route_to("sub_requirements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sub_requirements/1").to route_to("sub_requirements#destroy", :id => "1")
    end

  end
end
