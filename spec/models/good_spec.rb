require 'rails_helper'

RSpec.describe Good, type: :model do
  describe 'RELATIONSHIPS' do
    describe 'has one food' do
      it 'belongs to spot' do
        spot = Spot.create
        good = Good.new(spot_id: spot.id)
        expect(good.spot).to eq(spot)
      end
    end
  end

  describe 'INSTANCE METHODS' do
    let(:good) { Good.create(image_name: 'mr-mouse.png') }

    describe ':image' do
      it 'responds to :image' do
        expect(good).to respond_to(:image)
      end

      it 'includes image_name' do
        expect(good.image).to include('mr-mouse.png')
      end
    end
  end
end
