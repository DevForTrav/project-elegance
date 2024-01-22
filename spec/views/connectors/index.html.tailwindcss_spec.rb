require 'rails_helper'

RSpec.describe "connectors/index", type: :view do
  before(:each) do
    assign(:connectors, [
      Connector.create!(
        name: "Name",
        part_number: "Part Number",
        contacts: 2,
        manufacturer: "Manufacturer"
      ),
      Connector.create!(
        name: "Name",
        part_number: "Part Number",
        contacts: 2,
        manufacturer: "Manufacturer"
      )
    ])
  end

  it "renders a list of connectors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Part Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Manufacturer".to_s), count: 2
  end
end
