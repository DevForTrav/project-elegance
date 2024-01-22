require 'rails_helper'

RSpec.describe "terminals/show", type: :view do
  before(:each) do
    assign(:terminal, Terminal.create!(
      part_number: "Part Number",
      type: "",
      wire_gauge_min: 2,
      wire_gauge_max: 3,
      material: "Material",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Part Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Material/)
    expect(rendered).to match(/Description/)
  end
end
