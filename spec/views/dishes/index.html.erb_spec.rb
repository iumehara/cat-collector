require 'rails_helper'

RSpec.describe 'dishes/index', type: :view do
  before(:each) do
    assign(:dishes, [
      Dish.create!(
        position_id: 1,
        yard_id: 2,
        current_amount: 3
      ),
      Dish.create!(
        position_id: 1,
        yard_id: 2,
        current_amount: 3
      )
    ])
  end

  it 'renders a list of dishes' do
    render
    assert_select 'tr>td', text: 1.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
  end
end
