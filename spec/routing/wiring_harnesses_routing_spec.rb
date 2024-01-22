require "rails_helper"

RSpec.describe WiringHarnessesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/wiring_harnesses").to route_to("wiring_harnesses#index")
    end

    it "routes to #new" do
      expect(get: "/wiring_harnesses/new").to route_to("wiring_harnesses#new")
    end

    it "routes to #show" do
      expect(get: "/wiring_harnesses/1").to route_to("wiring_harnesses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/wiring_harnesses/1/edit").to route_to("wiring_harnesses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/wiring_harnesses").to route_to("wiring_harnesses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/wiring_harnesses/1").to route_to("wiring_harnesses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/wiring_harnesses/1").to route_to("wiring_harnesses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/wiring_harnesses/1").to route_to("wiring_harnesses#destroy", id: "1")
    end
  end
end
