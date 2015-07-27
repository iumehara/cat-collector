require 'rails_helper'

RSpec.describe 'dishes/edit', type: :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
                            position_id: 1,
                            yard_id: 1,
                            current_amount: 1
    ))
  end

  it 'renders the edit dish form' do
    render

    assert_select 'form[action=?][method=?]', dish_path(@dish), 'post' do
      assert_select 'input#dish_position_id[name=?]', 'dish[position_id]'

      assert_select 'input#dish_yard_id[name=?]', 'dish[yard_id]'

      assert_select 'input#dish_current_amount[name=?]', 'dish[current_amount]'
    end
  end
end
