require 'rails_helper'

RSpec.describe "wires/index", type: :view do
  before(:each) do
    assign(:wires, [
      Wire.create!(
        primary_color: "Primary Color",
        secondary_color: "Secondary Color",
        gauge: "Gauge",
        quantity: 2
      ),
      Wire.create!(
        primary_color: "Primary Color",
        secondary_color: "Secondary Color",
        gauge: "Gauge",
        quantity: 2
      )
    ])
  end

  it "renders a list of wires" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Primary Color".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Secondary Color".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Gauge".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
