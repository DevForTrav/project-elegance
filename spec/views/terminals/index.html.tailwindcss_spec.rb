require 'rails_helper'

RSpec.describe "terminals/index", type: :view do
  before(:each) do
    assign(:terminals, [
      Terminal.create!(
        part_number: "Part Number",
        type: "",
        wire_gauge_min: 2,
        wire_gauge_max: 3,
        material: "Material",
        description: "Description"
      ),
      Terminal.create!(
        part_number: "Part Number",
        type: "",
        wire_gauge_min: 2,
        wire_gauge_max: 3,
        material: "Material",
        description: "Description"
      )
    ])
  end

  it "renders a list of terminals" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Part Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Material".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
