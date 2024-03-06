require 'rails_helper'

RSpec.describe "boat_circuits/index", type: :view do
  before(:each) do
    assign(:boat_circuits, [
      BoatCircuit.create!(
        boat: nil,
        circuit: nil
      ),
      BoatCircuit.create!(
        boat: nil,
        circuit: nil
      )
    ])
  end

  it "renders a list of boat_circuits" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
