require "rails_helper"

RSpec.describe TerminalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/terminals").to route_to("terminals#index")
    end

    it "routes to #new" do
      expect(get: "/terminals/new").to route_to("terminals#new")
    end

    it "routes to #show" do
      expect(get: "/terminals/1").to route_to("terminals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/terminals/1/edit").to route_to("terminals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/terminals").to route_to("terminals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/terminals/1").to route_to("terminals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/terminals/1").to route_to("terminals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/terminals/1").to route_to("terminals#destroy", id: "1")
    end
  end
end
