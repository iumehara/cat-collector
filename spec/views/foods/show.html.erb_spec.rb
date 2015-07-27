require 'rails_helper'

RSpec.describe 'foods/show', type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
                            name: 'Name',
                            description: 'Description',
                            price_type: 'Price Type',
                            price_value: 1,
                            size: 'Size',
                            spot_id: 2,
                            total_amount: 3,
                            current_amount: 4
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Price Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
