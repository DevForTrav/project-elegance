require 'rails_helper'

RSpec.describe "circuits/edit", type: :view do
  let(:circuit) {
    Circuit.create!(
      label: "MyString",
      gauge: "MyString",
      length: 1,
      wiring_harness: nil,
      p1_terminal: nil,
      p2_terminal: nil,
      p1_connector: nil,
      p2_connector: nil,
      wire: nil
    )
  }

  before(:each) do
    assign(:circuit, circuit)
  end

  it "renders the edit circuit form" do
    render

    assert_select "form[action=?][method=?]", circuit_path(circuit), "post" do

      assert_select "input[name=?]", "circuit[label]"

      assert_select "input[name=?]", "circuit[gauge]"

      assert_select "input[name=?]", "circuit[length]"

      assert_select "input[name=?]", "circuit[wiring_harness_id]"

      assert_select "input[name=?]", "circuit[p1_terminal_id]"

      assert_select "input[name=?]", "circuit[p2_terminal_id]"

      assert_select "input[name=?]", "circuit[p1_connector_id]"

      assert_select "input[name=?]", "circuit[p2_connector_id]"

      assert_select "input[name=?]", "circuit[wire_id]"
    end
  end
end
