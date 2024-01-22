require 'rails_helper'

RSpec.describe "terminals/new", type: :view do
  before(:each) do
    assign(:terminal, Terminal.new(
      part_number: "MyString",
      type: "",
      wire_gauge_min: 1,
      wire_gauge_max: 1,
      material: "MyString",
      description: "MyString"
    ))
  end

  it "renders new terminal form" do
    render

    assert_select "form[action=?][method=?]", terminals_path, "post" do

      assert_select "input[name=?]", "terminal[part_number]"

      assert_select "input[name=?]", "terminal[type]"

      assert_select "input[name=?]", "terminal[wire_gauge_min]"

      assert_select "input[name=?]", "terminal[wire_gauge_max]"

      assert_select "input[name=?]", "terminal[material]"

      assert_select "input[name=?]", "terminal[description]"
    end
  end
end
