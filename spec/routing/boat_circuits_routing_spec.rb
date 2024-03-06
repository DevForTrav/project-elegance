require "rails_helper"

RSpec.describe BoatCircuitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/boat_circuits").to route_to("boat_circuits#index")
    end

    it "routes to #new" do
      expect(get: "/boat_circuits/new").to route_to("boat_circuits#new")
    end

    it "routes to #show" do
      expect(get: "/boat_circuits/1").to route_to("boat_circuits#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/boat_circuits/1/edit").to route_to("boat_circuits#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/boat_circuits").to route_to("boat_circuits#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/boat_circuits/1").to route_to("boat_circuits#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/boat_circuits/1").to route_to("boat_circuits#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/boat_circuits/1").to route_to("boat_circuits#destroy", id: "1")
    end
  end
end
