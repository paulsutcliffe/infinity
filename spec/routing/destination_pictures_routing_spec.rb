require "spec_helper"

describe DestinationPicturesController do
  describe "routing" do

    it "routes to #index" do
      get("/destination_pictures").should route_to("destination_pictures#index")
    end

    it "routes to #new" do
      get("/destination_pictures/new").should route_to("destination_pictures#new")
    end

    it "routes to #show" do
      get("/destination_pictures/1").should route_to("destination_pictures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/destination_pictures/1/edit").should route_to("destination_pictures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/destination_pictures").should route_to("destination_pictures#create")
    end

    it "routes to #update" do
      put("/destination_pictures/1").should route_to("destination_pictures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/destination_pictures/1").should route_to("destination_pictures#destroy", :id => "1")
    end

  end
end
