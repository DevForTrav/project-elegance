require 'rails_helper'

RSpec.describe "splices/edit", type: :view do
  let(:splice) {
    Splice.create!(
      circuit: nil,
      terminal: nil,
      label: "MyString",
      parent_splice: nil,
      length: 1
    )
  }

  before(:each) do
    assign(:splice, splice)
  end

  it "renders the edit splice form" do
    render

    assert_select "form[action=?][method=?]", splice_path(splice), "post" do

      assert_select "input[name=?]", "splice[circuit_id]"

      assert_select "input[name=?]", "splice[terminal_id]"

      assert_select "input[name=?]", "splice[label]"

      assert_select "input[name=?]", "splice[parent_splice_id]"

      assert_select "input[name=?]", "splice[length]"
    end
  end
end
