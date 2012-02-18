require "spec_helper"

describe BreadController do
  describe "routing" do

    it "routes to #index" do
      get("/bread").should route_to("bread#index")
    end

    it "routes to #new" do
      get("/bread/new").should route_to("bread#new")
    end

    it "routes to #show" do
      get("/bread/1").should route_to("bread#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bread/1/edit").should route_to("bread#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bread").should route_to("bread#create")
    end

    it "routes to #update" do
      put("/bread/1").should route_to("bread#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bread/1").should route_to("bread#destroy", :id => "1")
    end

  end
end
