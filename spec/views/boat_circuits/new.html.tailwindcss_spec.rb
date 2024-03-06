require 'rails_helper'

RSpec.describe "boat_circuits/new", type: :view do
  before(:each) do
    assign(:boat_circuit, BoatCircuit.new(
      boat: nil,
      circuit: nil
    ))
  end

  it "renders new boat_circuit form" do
    render

    assert_select "form[action=?][method=?]", boat_circuits_path, "post" do

      assert_select "input[name=?]", "boat_circuit[boat_id]"

      assert_select "input[name=?]", "boat_circuit[circuit_id]"
    end
  end
end
