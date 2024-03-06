require "rails_helper"

RSpec.describe BoatComponentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/boat_components").to route_to("boat_components#index")
    end

    it "routes to #new" do
      expect(get: "/boat_components/new").to route_to("boat_components#new")
    end

    it "routes to #show" do
      expect(get: "/boat_components/1").to route_to("boat_components#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/boat_components/1/edit").to route_to("boat_components#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/boat_components").to route_to("boat_components#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/boat_components/1").to route_to("boat_components#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/boat_components/1").to route_to("boat_components#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/boat_components/1").to route_to("boat_components#destroy", id: "1")
    end
  end
end
