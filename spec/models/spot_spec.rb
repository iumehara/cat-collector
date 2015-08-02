require 'rails_helper'

RSpec.describe Spot, type: :model do
  describe 'RELATIONSHIPS' do
    describe 'has one good' do
      it 'has one good' do
        spot = Spot.create
        good = Good.create(spot_id: spot.id)
        expect(spot.good).to eq(good)
      end
    end

    describe 'belongs to yard' do
      it 'has one good' do
        yard = Yard.create
        spot = Spot.create(yard_id: yard.id)
        expect(spot.yard).to eq(yard)
      end
    end
  end
end
