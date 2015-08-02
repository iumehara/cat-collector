require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe 'RELATIONSHIPS' do
    let(:yard) { Yard.create }
    let(:dish) { Dish.create(yard_id: yard.id) }

    describe 'belongs to yard' do
      it 'belongs to yard' do
        expect(dish.yard).to eq(yard)
      end
    end

    describe 'has one food' do
      it 'has one food' do
        food = Food.create(dish_id: dish.id)
        expect(dish.food).to eq(food)
      end
    end
  end

  describe 'INSTANCE METHODS' do
    let(:dish) { Dish.create }
    let(:food) { Food.create(dish_id: dish.id, amount: 100) }

    describe ':empty?' do
      it 'responds to :empty?' do
        expect(dish).to respond_to(:empty?)
      end
      it 'assesses empty' do
        dish.amount = 0
        expect(dish.empty?).to be_truthy
      end
      it 'assesses not empty' do
        dish.amount = 10
        expect(dish.empty?).to be_falsy
      end
    end

    describe ':percent_px' do
      it 'responds to :percent_px' do
        expect(dish).to respond_to(:percent_px)
      end
      it 'asseses percent_px' do
        dish.amount = 60
        food.amount = 100
        expect(dish.percent_px).to eq 120.0
      end
    end

    describe ':decrement_amount' do
      it 'responds to :decrement_amount' do
        expect(dish).to respond_to(:decrement_amount)
      end

      it 'decrements amount by number of minutes (+1)' do
        dish.amount = 100
        dish.updated_at = 14.minutes.ago
        dish.decrement_amount
        expect(dish.amount).to eq(85)
      end

      it 'does not decrement below 0 ' do
        dish.amount = 8
        dish.updated_at = 10.minutes.ago
        dish.decrement_amount
        expect(dish.amount).to eq(0)
      end
    end
  end
end
