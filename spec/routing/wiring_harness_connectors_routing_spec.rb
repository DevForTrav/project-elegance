require "rails_helper"

RSpec.describe WiringHarnessConnectorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/wiring_harness_connectors").to route_to("wiring_harness_connectors#index")
    end

    it "routes to #new" do
      expect(get: "/wiring_harness_connectors/new").to route_to("wiring_harness_connectors#new")
    end

    it "routes to #show" do
      expect(get: "/wiring_harness_connectors/1").to route_to("wiring_harness_connectors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/wiring_harness_connectors/1/edit").to route_to("wiring_harness_connectors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/wiring_harness_connectors").to route_to("wiring_harness_connectors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/wiring_harness_connectors/1").to route_to("wiring_harness_connectors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/wiring_harness_connectors/1").to route_to("wiring_harness_connectors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/wiring_harness_connectors/1").to route_to("wiring_harness_connectors#destroy", id: "1")
    end
  end
end
