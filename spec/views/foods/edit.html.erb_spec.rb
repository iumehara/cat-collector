require 'rails_helper'

RSpec.describe 'foods/edit', type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
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

  it 'renders the edit food form' do
    render

    assert_select 'form[action=?][method=?]', food_path(@food), 'post' do
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
