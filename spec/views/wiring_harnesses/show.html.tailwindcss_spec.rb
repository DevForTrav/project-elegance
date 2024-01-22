require 'rails_helper'

RSpec.describe "wiring_harnesses/show", type: :view do
  before(:each) do
    assign(:wiring_harness, WiringHarness.create!(
      name: "Name",
      boat: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
