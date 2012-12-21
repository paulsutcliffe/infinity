require "spec_helper"

describe CountryPicturesController do
  describe "routing" do

    it "routes to #index" do
      get("/country_pictures").should route_to("country_pictures#index")
    end

    it "routes to #new" do
      get("/country_pictures/new").should route_to("country_pictures#new")
    end

    it "routes to #show" do
      get("/country_pictures/1").should route_to("country_pictures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/country_pictures/1/edit").should route_to("country_pictures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/country_pictures").should route_to("country_pictures#create")
    end

    it "routes to #update" do
      put("/country_pictures/1").should route_to("country_pictures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/country_pictures/1").should route_to("country_pictures#destroy", :id => "1")
    end

  end
end
