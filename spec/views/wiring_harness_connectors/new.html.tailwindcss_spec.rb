require 'rails_helper'

RSpec.describe "wiring_harness_connectors/new", type: :view do
  before(:each) do
    assign(:wiring_harness_connector, WiringHarnessConnector.new(
      label: "MyString",
      populated_contacts: 1,
      wiring_harness: nil,
      connector: nil
    ))
  end

  it "renders new wiring_harness_connector form" do
    render

    assert_select "form[action=?][method=?]", wiring_harness_connectors_path, "post" do

      assert_select "input[name=?]", "wiring_harness_connector[label]"

      assert_select "input[name=?]", "wiring_harness_connector[populated_contacts]"

      assert_select "input[name=?]", "wiring_harness_connector[wiring_harness_id]"

      assert_select "input[name=?]", "wiring_harness_connector[connector_id]"
    end
  end
end
