require "spec_helper"

describe TestimoniesController do
  describe "routing" do

    it "routes to #index" do
      get("/testimonies").should route_to("testimonies#index")
    end

    it "routes to #new" do
      get("/testimonies/new").should route_to("testimonies#new")
    end

    it "routes to #show" do
      get("/testimonies/1").should route_to("testimonies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/testimonies/1/edit").should route_to("testimonies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/testimonies").should route_to("testimonies#create")
    end

    it "routes to #update" do
      put("/testimonies/1").should route_to("testimonies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/testimonies/1").should route_to("testimonies#destroy", :id => "1")
    end

  end
end
