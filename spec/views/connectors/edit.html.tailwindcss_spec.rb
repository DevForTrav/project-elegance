require 'rails_helper'

RSpec.describe "connectors/edit", type: :view do
  let(:connector) {
    Connector.create!(
      name: "MyString",
      part_number: "MyString",
      contacts: 1,
      manufacturer: "MyString"
    )
  }

  before(:each) do
    assign(:connector, connector)
  end

  it "renders the edit connector form" do
    render

    assert_select "form[action=?][method=?]", connector_path(connector), "post" do

      assert_select "input[name=?]", "connector[name]"

      assert_select "input[name=?]", "connector[part_number]"

      assert_select "input[name=?]", "connector[contacts]"

      assert_select "input[name=?]", "connector[manufacturer]"
    end
  end
end
