require 'rails_helper'

RSpec.describe "boat_wiring_harnesses/edit", type: :view do
  let(:boat_wiring_harness) {
    BoatWiringHarness.create!(
      boat: nil,
      wiring_harness: nil
    )
  }

  before(:each) do
    assign(:boat_wiring_harness, boat_wiring_harness)
  end

  it "renders the edit boat_wiring_harness form" do
    render

    assert_select "form[action=?][method=?]", boat_wiring_harness_path(boat_wiring_harness), "post" do

      assert_select "input[name=?]", "boat_wiring_harness[boat_id]"

      assert_select "input[name=?]", "boat_wiring_harness[wiring_harness_id]"
    end
  end
end
