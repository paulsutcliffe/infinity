require "spec_helper"

describe ItinerariesController do
  describe "routing" do

    it "routes to #index" do
      get("/itineraries").should route_to("itineraries#index")
    end

    it "routes to #new" do
      get("/itineraries/new").should route_to("itineraries#new")
    end

    it "routes to #show" do
      get("/itineraries/1").should route_to("itineraries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itineraries/1/edit").should route_to("itineraries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itineraries").should route_to("itineraries#create")
    end

    it "routes to #update" do
      put("/itineraries/1").should route_to("itineraries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itineraries/1").should route_to("itineraries#destroy", :id => "1")
    end

  end
end
