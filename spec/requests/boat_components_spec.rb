require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/boat_components", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # BoatComponent. As you add validations to BoatComponent, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      BoatComponent.create! valid_attributes
      get boat_components_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      boat_component = BoatComponent.create! valid_attributes
      get boat_component_url(boat_component)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_boat_component_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      boat_component = BoatComponent.create! valid_attributes
      get edit_boat_component_url(boat_component)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new BoatComponent" do
        expect {
          post boat_components_url, params: { boat_component: valid_attributes }
        }.to change(BoatComponent, :count).by(1)
      end

      it "redirects to the created boat_component" do
        post boat_components_url, params: { boat_component: valid_attributes }
        expect(response).to redirect_to(boat_component_url(BoatComponent.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new BoatComponent" do
        expect {
          post boat_components_url, params: { boat_component: invalid_attributes }
        }.to change(BoatComponent, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post boat_components_url, params: { boat_component: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested boat_component" do
        boat_component = BoatComponent.create! valid_attributes
        patch boat_component_url(boat_component), params: { boat_component: new_attributes }
        boat_component.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the boat_component" do
        boat_component = BoatComponent.create! valid_attributes
        patch boat_component_url(boat_component), params: { boat_component: new_attributes }
        boat_component.reload
        expect(response).to redirect_to(boat_component_url(boat_component))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        boat_component = BoatComponent.create! valid_attributes
        patch boat_component_url(boat_component), params: { boat_component: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested boat_component" do
      boat_component = BoatComponent.create! valid_attributes
      expect {
        delete boat_component_url(boat_component)
      }.to change(BoatComponent, :count).by(-1)
    end

    it "redirects to the boat_components list" do
      boat_component = BoatComponent.create! valid_attributes
      delete boat_component_url(boat_component)
      expect(response).to redirect_to(boat_components_url)
    end
  end
end