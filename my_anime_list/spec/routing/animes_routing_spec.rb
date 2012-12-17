require "spec_helper"

describe AnimesController do
  describe "routing" do

    it "routes to #index" do
      get("/animes").should route_to("animes#index")
    end

    it "routes to #new" do
      get("/animes/new").should route_to("animes#new")
    end

    it "routes to #show" do
      get("/animes/1").should route_to("animes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/animes/1/edit").should route_to("animes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/animes").should route_to("animes#create")
    end

    it "routes to #update" do
      put("/animes/1").should route_to("animes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/animes/1").should route_to("animes#destroy", :id => "1")
    end

  end
end
