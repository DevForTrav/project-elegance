require 'rails_helper'

RSpec.describe "circuits/show", type: :view do
  before(:each) do
    assign(:circuit, Circuit.create!(
      label: "Label",
      gauge: "Gauge",
      length: 2,
      wiring_harness: nil,
      p1_terminal: nil,
      p2_terminal: nil,
      p1_connector: nil,
      p2_connector: nil,
      wire: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Gauge/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
