require 'rails_helper'

RSpec.describe "boat_circuits/show", type: :view do
  before(:each) do
    assign(:boat_circuit, BoatCircuit.create!(
      boat: nil,
      circuit: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
