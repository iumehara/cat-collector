require 'rails_helper'

RSpec.describe Yard, type: :model do
  describe 'RELATIONSHIPS' do
    describe 'has many spots' do
      it 'has many spots' do
        yard = Yard.create
        spot1 = Spot.create(yard_id: yard.id)
        spot2 = Spot.create(yard_id: yard.id)
        expect(yard.spots.count).to eq(2)
        expect(yard.spots).to include(spot1)
        expect(yard.spots).to include(spot2)
      end
    end

    describe 'has one dish' do
      it 'has one dish' do
        yard = Yard.create
        dish = Dish.create(yard_id: yard.id)
        expect(yard.dish).to eq(dish)
      end
    end
  end
end
