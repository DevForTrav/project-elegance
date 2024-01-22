require 'rails_helper'

RSpec.describe "terminals/edit", type: :view do
  let(:terminal) {
    Terminal.create!(
      part_number: "MyString",
      type: "",
      wire_gauge_min: 1,
      wire_gauge_max: 1,
      material: "MyString",
      description: "MyString"
    )
  }

  before(:each) do
    assign(:terminal, terminal)
  end

  it "renders the edit terminal form" do
    render

    assert_select "form[action=?][method=?]", terminal_path(terminal), "post" do

      assert_select "input[name=?]", "terminal[part_number]"

      assert_select "input[name=?]", "terminal[type]"

      assert_select "input[name=?]", "terminal[wire_gauge_min]"

      assert_select "input[name=?]", "terminal[wire_gauge_max]"

      assert_select "input[name=?]", "terminal[material]"

      assert_select "input[name=?]", "terminal[description]"
    end
  end
end
