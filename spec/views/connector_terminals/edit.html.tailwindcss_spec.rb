require 'rails_helper'

RSpec.describe "connector_terminals/edit", type: :view do
  let(:connector_terminal) {
    ConnectorTerminal.create!(
      terminal: nil,
      connector: nil
    )
  }

  before(:each) do
    assign(:connector_terminal, connector_terminal)
  end

  it "renders the edit connector_terminal form" do
    render

    assert_select "form[action=?][method=?]", connector_terminal_path(connector_terminal), "post" do

      assert_select "input[name=?]", "connector_terminal[terminal_id]"

      assert_select "input[name=?]", "connector_terminal[connector_id]"
    end
  end
end
