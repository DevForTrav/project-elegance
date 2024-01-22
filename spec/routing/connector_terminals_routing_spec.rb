require "rails_helper"

RSpec.describe ConnectorTerminalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/connector_terminals").to route_to("connector_terminals#index")
    end

    it "routes to #new" do
      expect(get: "/connector_terminals/new").to route_to("connector_terminals#new")
    end

    it "routes to #show" do
      expect(get: "/connector_terminals/1").to route_to("connector_terminals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/connector_terminals/1/edit").to route_to("connector_terminals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/connector_terminals").to route_to("connector_terminals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/connector_terminals/1").to route_to("connector_terminals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/connector_terminals/1").to route_to("connector_terminals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/connector_terminals/1").to route_to("connector_terminals#destroy", id: "1")
    end
  end
end
