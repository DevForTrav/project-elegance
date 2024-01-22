require 'rails_helper'

RSpec.describe "wires/new", type: :view do
  before(:each) do
    assign(:wire, Wire.new(
      primary_color: "MyString",
      secondary_color: "MyString",
      gauge: "MyString",
      quantity: 1
    ))
  end

  it "renders new wire form" do
    render

    assert_select "form[action=?][method=?]", wires_path, "post" do

      assert_select "input[name=?]", "wire[primary_color]"

      assert_select "input[name=?]", "wire[secondary_color]"

      assert_select "input[name=?]", "wire[gauge]"

      assert_select "input[name=?]", "wire[quantity]"
    end
  end
end
