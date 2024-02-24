require 'rails_helper'

RSpec.describe "boat_components/edit", type: :view do
  let(:boat_component) {
    BoatComponent.create!(
      boat: nil,
      component: nil
    )
  }

  before(:each) do
    assign(:boat_component, boat_component)
  end

  it "renders the edit boat_component form" do
    render

    assert_select "form[action=?][method=?]", boat_component_path(boat_component), "post" do

      assert_select "input[name=?]", "boat_component[boat_id]"

      assert_select "input[name=?]", "boat_component[component_id]"
    end
  end
end
