require 'rails_helper'

RSpec.describe "wires/show", type: :view do
  before(:each) do
    assign(:wire, Wire.create!(
      primary_color: "Primary Color",
      secondary_color: "Secondary Color",
      gauge: "Gauge",
      quantity: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Primary Color/)
    expect(rendered).to match(/Secondary Color/)
    expect(rendered).to match(/Gauge/)
    expect(rendered).to match(/2/)
  end
end
