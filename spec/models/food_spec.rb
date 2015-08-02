require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'RELATIONSHIPS' do
    describe 'has one food' do
      it 'belongs to dish' do
        dish = Dish.create
        food = Food.new(dish_id: dish.id)
        expect(food.dish).to eq(dish)
      end
    end
  end

  describe 'INSTANCE METHODS' do
    let(:dish) { Dish.create(amount: 10) }
    let(:food) { Food.create(dish_id: dish.id, amount: 100, image_empty_name: 'crunchy-empty.png', image_full_name: 'crunchy-full.png') }

    describe ':image' do
      it 'responds to :image' do
        expect(food).to respond_to(:image)
      end

      it 'includes image_name' do
        expect(food.image).to include('crunchy-full.png')
      end
    end
  end
end
