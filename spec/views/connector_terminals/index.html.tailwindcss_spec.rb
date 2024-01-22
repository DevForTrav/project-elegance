require 'rails_helper'

RSpec.describe "connector_terminals/index", type: :view do
  before(:each) do
    assign(:connector_terminals, [
      ConnectorTerminal.create!(
        terminal: nil,
        connector: nil
      ),
      ConnectorTerminal.create!(
        terminal: nil,
        connector: nil
      )
    ])
  end

  it "renders a list of connector_terminals" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
