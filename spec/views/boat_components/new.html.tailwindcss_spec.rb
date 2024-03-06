require 'rails_helper'

RSpec.describe "boat_components/new", type: :view do
  before(:each) do
    assign(:boat_component, BoatComponent.new(
      boat: nil,
      component: nil
    ))
  end

  it "renders new boat_component form" do
    render

    assert_select "form[action=?][method=?]", boat_components_path, "post" do

      assert_select "input[name=?]", "boat_component[boat_id]"

      assert_select "input[name=?]", "boat_component[component_id]"
    end
  end
end
