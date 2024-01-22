require 'rails_helper'

RSpec.describe "connector_terminals/show", type: :view do
  before(:each) do
    assign(:connector_terminal, ConnectorTerminal.create!(
      terminal: nil,
      connector: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
