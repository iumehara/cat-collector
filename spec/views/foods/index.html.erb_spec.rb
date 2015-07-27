require 'rails_helper'

RSpec.describe 'foods/index', type: :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        name: 'Name',
        description: 'Description',
        price_type: 'Price Type',
        price_value: 1,
        size: 'Size',
        spot_id: 2,
        total_amount: 3,
        current_amount: 4
      ),
      Food.create!(
        name: 'Name',
        description: 'Description',
        price_type: 'Price Type',
        price_value: 1,
        size: 'Size',
        spot_id: 2,
        total_amount: 3,
        current_amount: 4
      )
    ])
  end

  it 'renders a list of foods' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
    assert_select 'tr>td', text: 'Price Type'.to_s, count: 2
    assert_select 'tr>td', text: 1.to_s, count: 2
    assert_select 'tr>td', text: 'Size'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
  end
end
