require "rails_helper"

RSpec.describe AdvancementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/advancements").to route_to("advancements#index")
    end

    it "routes to #new" do
      expect(:get => "/advancements/new").to route_to("advancements#new")
    end

    it "routes to #show" do
      expect(:get => "/advancements/1").to route_to("advancements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/advancements/1/edit").to route_to("advancements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/advancements").to route_to("advancements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/advancements/1").to route_to("advancements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/advancements/1").to route_to("advancements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/advancements/1").to route_to("advancements#destroy", :id => "1")
    end

  end
end
