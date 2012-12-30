require "spec_helper"

describe OfferSeasonsController do
  describe "routing" do

    it "routes to #index" do
      get("/offer_seasons").should route_to("offer_seasons#index")
    end

    it "routes to #new" do
      get("/offer_seasons/new").should route_to("offer_seasons#new")
    end

    it "routes to #show" do
      get("/offer_seasons/1").should route_to("offer_seasons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/offer_seasons/1/edit").should route_to("offer_seasons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/offer_seasons").should route_to("offer_seasons#create")
    end

    it "routes to #update" do
      put("/offer_seasons/1").should route_to("offer_seasons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/offer_seasons/1").should route_to("offer_seasons#destroy", :id => "1")
    end

  end
end
