require 'rails_helper'

RSpec.describe "boat_components/index", type: :view do
  before(:each) do
    assign(:boat_components, [
      BoatComponent.create!(
        boat: nil,
        component: nil
      ),
      BoatComponent.create!(
        boat: nil,
        component: nil
      )
    ])
  end

  it "renders a list of boat_components" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
