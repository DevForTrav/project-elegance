require 'rails_helper'

RSpec.describe "connectors/show", type: :view do
  before(:each) do
    assign(:connector, Connector.create!(
      name: "Name",
      part_number: "Part Number",
      contacts: 2,
      manufacturer: "Manufacturer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Part Number/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Manufacturer/)
  end
end
