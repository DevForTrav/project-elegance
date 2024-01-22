require 'rails_helper'

RSpec.describe "wiring_harnesses/index", type: :view do
  before(:each) do
    assign(:wiring_harnesses, [
      WiringHarness.create!(
        name: "Name",
        boat: nil
      ),
      WiringHarness.create!(
        name: "Name",
        boat: nil
      )
    ])
  end

  it "renders a list of wiring_harnesses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
