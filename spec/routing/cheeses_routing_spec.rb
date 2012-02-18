require "spec_helper"

describe CheesesController do
  describe "routing" do

    it "routes to #index" do
      get("/cheeses").should route_to("cheeses#index")
    end

    it "routes to #new" do
      get("/cheeses/new").should route_to("cheeses#new")
    end

    it "routes to #show" do
      get("/cheeses/1").should route_to("cheeses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cheeses/1/edit").should route_to("cheeses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cheeses").should route_to("cheeses#create")
    end

    it "routes to #update" do
      put("/cheeses/1").should route_to("cheeses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cheeses/1").should route_to("cheeses#destroy", :id => "1")
    end

  end
end
