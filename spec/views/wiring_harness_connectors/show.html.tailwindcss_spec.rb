require 'rails_helper'

RSpec.describe "wiring_harness_connectors/show", type: :view do
  before(:each) do
    assign(:wiring_harness_connector, WiringHarnessConnector.create!(
      label: "Label",
      populated_contacts: 2,
      wiring_harness: nil,
      connector: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
