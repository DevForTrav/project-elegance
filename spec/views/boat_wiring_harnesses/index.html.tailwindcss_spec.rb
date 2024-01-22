require 'rails_helper'

RSpec.describe "boat_wiring_harnesses/index", type: :view do
  before(:each) do
    assign(:boat_wiring_harnesses, [
      BoatWiringHarness.create!(
        boat: nil,
        wiring_harness: nil
      ),
      BoatWiringHarness.create!(
        boat: nil,
        wiring_harness: nil
      )
    ])
  end

  it "renders a list of boat_wiring_harnesses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
