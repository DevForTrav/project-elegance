require 'rails_helper'

RSpec.describe "splices/show", type: :view do
  before(:each) do
    assign(:splice, Splice.create!(
      circuit: nil,
      terminal: nil,
      label: "Label",
      parent_splice: nil,
      length: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
