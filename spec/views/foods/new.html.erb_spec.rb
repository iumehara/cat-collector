require 'rails_helper'

RSpec.describe 'foods/new', type: :view do
  before(:each) do
    assign(:food, Food.new(
                    name: 'MyString',
                    description: 'MyString',
                    price_type: 'MyString',
                    price_value: 1,
                    size: 'MyString',
                    spot_id: 1,
                    total_amount: 1,
                    current_amount: 1
    ))
  end

  it 'renders new food form' do
    render

    assert_select 'form[action=?][method=?]', foods_path, 'post' do
      assert_select 'input#food_name[name=?]', 'food[name]'

      assert_select 'input#food_description[name=?]', 'food[description]'

      assert_select 'input#food_price_type[name=?]', 'food[price_type]'

      assert_select 'input#food_price_value[name=?]', 'food[price_value]'

      assert_select 'input#food_size[name=?]', 'food[size]'

      assert_select 'input#food_spot_id[name=?]', 'food[spot_id]'

      assert_select 'input#food_total_amount[name=?]', 'food[total_amount]'

      assert_select 'input#food_current_amount[name=?]', 'food[current_amount]'
    end
  end
end
