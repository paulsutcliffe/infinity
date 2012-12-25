require "spec_helper"

describe PacksController do
  describe "routing" do

    it "routes to #index" do
      get("/packs").should route_to("packs#index")
    end

    it "routes to #new" do
      get("/packs/new").should route_to("packs#new")
    end

    it "routes to #show" do
      get("/packs/1").should route_to("packs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/packs/1/edit").should route_to("packs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/packs").should route_to("packs#create")
    end

    it "routes to #update" do
      put("/packs/1").should route_to("packs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/packs/1").should route_to("packs#destroy", :id => "1")
    end

  end
end
