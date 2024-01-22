require 'rails_helper'

RSpec.describe "wiring_harnesses/new", type: :view do
  before(:each) do
    assign(:wiring_harness, WiringHarness.new(
      name: "MyString",
      boat: nil
    ))
  end

  it "renders new wiring_harness form" do
    render

    assert_select "form[action=?][method=?]", wiring_harnesses_path, "post" do

      assert_select "input[name=?]", "wiring_harness[name]"

      assert_select "input[name=?]", "wiring_harness[boat_id]"
    end
  end
end
