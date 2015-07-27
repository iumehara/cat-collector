require 'rails_helper'

RSpec.describe 'dishes/show', type: :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
                            position_id: 1,
                            yard_id: 2,
                            current_amount: 3
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
