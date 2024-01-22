require 'rails_helper'

RSpec.describe "wires/edit", type: :view do
  let(:wire) {
    Wire.create!(
      primary_color: "MyString",
      secondary_color: "MyString",
      gauge: "MyString",
      quantity: 1
    )
  }

  before(:each) do
    assign(:wire, wire)
  end

  it "renders the edit wire form" do
    render

    assert_select "form[action=?][method=?]", wire_path(wire), "post" do

      assert_select "input[name=?]", "wire[primary_color]"

      assert_select "input[name=?]", "wire[secondary_color]"

      assert_select "input[name=?]", "wire[gauge]"

      assert_select "input[name=?]", "wire[quantity]"
    end
  end
end
