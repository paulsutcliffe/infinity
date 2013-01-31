require "spec_helper"

describe HealthsController do
  describe "routing" do

    it "routes to #index" do
      get("/healths").should route_to("healths#index")
    end

    it "routes to #new" do
      get("/healths/new").should route_to("healths#new")
    end

    it "routes to #show" do
      get("/healths/1").should route_to("healths#show", :id => "1")
    end

    it "routes to #edit" do
      get("/healths/1/edit").should route_to("healths#edit", :id => "1")
    end

    it "routes to #create" do
      post("/healths").should route_to("healths#create")
    end

    it "routes to #update" do
      put("/healths/1").should route_to("healths#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/healths/1").should route_to("healths#destroy", :id => "1")
    end

  end
end
