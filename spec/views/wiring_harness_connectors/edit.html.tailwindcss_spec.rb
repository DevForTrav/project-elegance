require 'rails_helper'

RSpec.describe "wiring_harness_connectors/edit", type: :view do
  let(:wiring_harness_connector) {
    WiringHarnessConnector.create!(
      label: "MyString",
      populated_contacts: 1,
      wiring_harness: nil,
      connector: nil
    )
  }

  before(:each) do
    assign(:wiring_harness_connector, wiring_harness_connector)
  end

  it "renders the edit wiring_harness_connector form" do
    render

    assert_select "form[action=?][method=?]", wiring_harness_connector_path(wiring_harness_connector), "post" do

      assert_select "input[name=?]", "wiring_harness_connector[label]"

      assert_select "input[name=?]", "wiring_harness_connector[populated_contacts]"

      assert_select "input[name=?]", "wiring_harness_connector[wiring_harness_id]"

      assert_select "input[name=?]", "wiring_harness_connector[connector_id]"
    end
  end
end
