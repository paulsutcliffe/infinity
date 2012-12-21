require "spec_helper"

describe PressReleasesController do
  describe "routing" do

    it "routes to #index" do
      get("/press_releases").should route_to("press_releases#index")
    end

    it "routes to #new" do
      get("/press_releases/new").should route_to("press_releases#new")
    end

    it "routes to #show" do
      get("/press_releases/1").should route_to("press_releases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/press_releases/1/edit").should route_to("press_releases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/press_releases").should route_to("press_releases#create")
    end

    it "routes to #update" do
      put("/press_releases/1").should route_to("press_releases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/press_releases/1").should route_to("press_releases#destroy", :id => "1")
    end

  end
end
