require 'rails_helper'

RSpec.describe "splices/index", type: :view do
  before(:each) do
    assign(:splices, [
      Splice.create!(
        circuit: nil,
        terminal: nil,
        label: "Label",
        parent_splice: nil,
        length: 2
      ),
      Splice.create!(
        circuit: nil,
        terminal: nil,
        label: "Label",
        parent_splice: nil,
        length: 2
      )
    ])
  end

  it "renders a list of splices" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Label".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
