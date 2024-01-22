require 'rails_helper'

RSpec.describe "connectors/new", type: :view do
  before(:each) do
    assign(:connector, Connector.new(
      name: "MyString",
      part_number: "MyString",
      contacts: 1,
      manufacturer: "MyString"
    ))
  end

  it "renders new connector form" do
    render

    assert_select "form[action=?][method=?]", connectors_path, "post" do

      assert_select "input[name=?]", "connector[name]"

      assert_select "input[name=?]", "connector[part_number]"

      assert_select "input[name=?]", "connector[contacts]"

      assert_select "input[name=?]", "connector[manufacturer]"
    end
  end
end
