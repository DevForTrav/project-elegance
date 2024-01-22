require 'rails_helper'

RSpec.describe "connector_terminals/new", type: :view do
  before(:each) do
    assign(:connector_terminal, ConnectorTerminal.new(
      terminal: nil,
      connector: nil
    ))
  end

  it "renders new connector_terminal form" do
    render

    assert_select "form[action=?][method=?]", connector_terminals_path, "post" do

      assert_select "input[name=?]", "connector_terminal[terminal_id]"

      assert_select "input[name=?]", "connector_terminal[connector_id]"
    end
  end
end
