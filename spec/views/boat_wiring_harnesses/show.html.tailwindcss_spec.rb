require 'rails_helper'

RSpec.describe "boat_wiring_harnesses/show", type: :view do
  before(:each) do
    assign(:boat_wiring_harness, BoatWiringHarness.create!(
      boat: nil,
      wiring_harness: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
