require 'rails_helper'

RSpec.describe 'Food Depletion', type: :request do
  before(:all) do
    clean_db
    yard = Yard.create(name: 'backyard')
    @dish = Dish.create(yard_id: yard.id, amount: 50)
    Food.create(dish_id: @dish.id, amount: 100, image_full_name: 'full.png', image_empty_name: 'empty.png')
  end

  after(:all) { clean_db }

  describe 'Dish Depletion' do
    let(:dish_img_src) { page.find('div.dish a .good img')['src'] }

    it '3 mintues later' do
      @dish.update(updated_at: 3.minutes.ago)
      visit '/'
      @dish.reload
      expect(@dish.amount).to eq(50)
      expect(dish_img_src).to include('full.png')
    end

    it '20 mintues later' do
      @dish.update(updated_at: 20.minutes.ago)
      visit '/'
      @dish.reload
      expect(@dish.amount).to eq(29)
      expect(dish_img_src).to include('full.png')
    end

    it '60 mintues later' do
      @dish.update(updated_at: 60.minutes.ago)
      visit '/'
      @dish.reload
      expect(@dish.amount).to eq(0)
      expect(dish_img_src).to include('empty.png')
    end
  end
end
