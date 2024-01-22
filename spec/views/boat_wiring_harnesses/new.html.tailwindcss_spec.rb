require 'rails_helper'

RSpec.describe "boat_wiring_harnesses/new", type: :view do
  before(:each) do
    assign(:boat_wiring_harness, BoatWiringHarness.new(
      boat: nil,
      wiring_harness: nil
    ))
  end

  it "renders new boat_wiring_harness form" do
    render

    assert_select "form[action=?][method=?]", boat_wiring_harnesses_path, "post" do

      assert_select "input[name=?]", "boat_wiring_harness[boat_id]"

      assert_select "input[name=?]", "boat_wiring_harness[wiring_harness_id]"
    end
  end
end
