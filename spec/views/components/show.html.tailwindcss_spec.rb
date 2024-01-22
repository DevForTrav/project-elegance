require 'rails_helper'

RSpec.describe "components/show", type: :view do
  before(:each) do
    assign(:component, Component.create!(
      name: "Name",
      boat: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
