require 'rails_helper'

RSpec.describe "wiring_harnesses/edit", type: :view do
  let(:wiring_harness) {
    WiringHarness.create!(
      name: "MyString",
      boat: nil
    )
  }

  before(:each) do
    assign(:wiring_harness, wiring_harness)
  end

  it "renders the edit wiring_harness form" do
    render

    assert_select "form[action=?][method=?]", wiring_harness_path(wiring_harness), "post" do

      assert_select "input[name=?]", "wiring_harness[name]"

      assert_select "input[name=?]", "wiring_harness[boat_id]"
    end
  end
end
