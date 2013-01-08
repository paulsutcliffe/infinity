require "spec_helper"

describe PostsAndEventsController do
  describe "routing" do

    it "routes to #index" do
      get("/posts_and_events").should route_to("posts_and_events#index")
    end

    it "routes to #new" do
      get("/posts_and_events/new").should route_to("posts_and_events#new")
    end

    it "routes to #show" do
      get("/posts_and_events/1").should route_to("posts_and_events#show", :id => "1")
    end

    it "routes to #edit" do
      get("/posts_and_events/1/edit").should route_to("posts_and_events#edit", :id => "1")
    end

    it "routes to #create" do
      post("/posts_and_events").should route_to("posts_and_events#create")
    end

    it "routes to #update" do
      put("/posts_and_events/1").should route_to("posts_and_events#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/posts_and_events/1").should route_to("posts_and_events#destroy", :id => "1")
    end

  end
end
