require 'rails_helper'

RSpec.describe "circuits/index", type: :view do
  before(:each) do
    assign(:circuits, [
      Circuit.create!(
        label: "Label",
        gauge: "Gauge",
        length: 2,
        wiring_harness: nil,
        p1_terminal: nil,
        p2_terminal: nil,
        p1_connector: nil,
        p2_connector: nil,
        wire: nil
      ),
      Circuit.create!(
        label: "Label",
        gauge: "Gauge",
        length: 2,
        wiring_harness: nil,
        p1_terminal: nil,
        p2_terminal: nil,
        p1_connector: nil,
        p2_connector: nil,
        wire: nil
      )
    ])
  end

  it "renders a list of circuits" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Label".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Gauge".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
