require 'rails_helper'

RSpec.describe "wiring_harness_connectors/index", type: :view do
  before(:each) do
    assign(:wiring_harness_connectors, [
      WiringHarnessConnector.create!(
        label: "Label",
        populated_contacts: 2,
        wiring_harness: nil,
        connector: nil
      ),
      WiringHarnessConnector.create!(
        label: "Label",
        populated_contacts: 2,
        wiring_harness: nil,
        connector: nil
      )
    ])
  end

  it "renders a list of wiring_harness_connectors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Label".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
