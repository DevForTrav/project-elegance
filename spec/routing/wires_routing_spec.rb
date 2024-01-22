require "rails_helper"

RSpec.describe WiresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/wires").to route_to("wires#index")
    end

    it "routes to #new" do
      expect(get: "/wires/new").to route_to("wires#new")
    end

    it "routes to #show" do
      expect(get: "/wires/1").to route_to("wires#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/wires/1/edit").to route_to("wires#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/wires").to route_to("wires#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/wires/1").to route_to("wires#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/wires/1").to route_to("wires#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/wires/1").to route_to("wires#destroy", id: "1")
    end
  end
end
