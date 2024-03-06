require 'rails_helper'

RSpec.describe "boat_components/show", type: :view do
  before(:each) do
    assign(:boat_component, BoatComponent.create!(
      boat: nil,
      component: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
