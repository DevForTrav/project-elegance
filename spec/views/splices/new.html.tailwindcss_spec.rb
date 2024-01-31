require 'rails_helper'

RSpec.describe "splices/new", type: :view do
  before(:each) do
    assign(:splice, Splice.new(
      circuit: nil,
      terminal: nil,
      label: "MyString",
      parent_splice: nil,
      length: 1
    ))
  end

  it "renders new splice form" do
    render

    assert_select "form[action=?][method=?]", splices_path, "post" do

      assert_select "input[name=?]", "splice[circuit_id]"

      assert_select "input[name=?]", "splice[terminal_id]"

      assert_select "input[name=?]", "splice[label]"

      assert_select "input[name=?]", "splice[parent_splice_id]"

      assert_select "input[name=?]", "splice[length]"
    end
  end
end
