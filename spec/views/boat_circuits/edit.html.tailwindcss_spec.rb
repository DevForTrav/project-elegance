require 'rails_helper'

RSpec.describe "boat_circuits/edit", type: :view do
  let(:boat_circuit) {
    BoatCircuit.create!(
      boat: nil,
      circuit: nil
    )
  }

  before(:each) do
    assign(:boat_circuit, boat_circuit)
  end

  it "renders the edit boat_circuit form" do
    render

    assert_select "form[action=?][method=?]", boat_circuit_path(boat_circuit), "post" do

      assert_select "input[name=?]", "boat_circuit[boat_id]"

      assert_select "input[name=?]", "boat_circuit[circuit_id]"
    end
  end
end
