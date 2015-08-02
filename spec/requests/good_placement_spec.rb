require 'rails_helper'

RSpec.describe 'Good Placement', type: :request do
  before(:all) do
    clean_db
    yard = Yard.create(name: 'backyard')
    dish = Dish.create(yard_id: yard.id, amount: 50)
    Food.create(dish_id: dish.id, amount: 100, image_full_name: 'full.png', image_empty_name: 'empty.png')
    @spot1 = Spot.create(yard_id: yard.id, position_id: 1)
    @spot2 = Spot.create(yard_id: yard.id, position_id: 2)
    @box = Good.create(name: 'box', image_name: 'box.png')
    @mouse = Good.create(name: 'mouse', image_name: 'mouse.png')
  end

  after(:all) { clean_db }

  describe 'starts at toys page' do
    before { visit '/goods' }

    it 'has list of toys' do
      expect(page).to have_text('toys')
      expect(page).to have_text('box')
      expect(page).to have_text('mouse')
    end

    describe 'click a good' do
      before { page.find("#good-#{@box.id}").click }

      it 'redirects to yard' do
        expect(page).not_to have_text('toys')
        expect(page).to have_css("div.loc-#{@spot1.id}")
        expect(page).to have_css("div.loc-#{@spot2.id}")
      end

      describe 'select a spot' do
        before { page.find("#spot-#{@spot1.id}").click }
        it 'redirects to goods page' do
          expect(page).to have_text('toys')
        end

        it 'places box in spot 1' do
          visit '/'
          div_name = "div.loc-#{@spot1.id}"
          expect(page).to have_css(div_name)
          image_src = page.find(div_name + ' .spot-box .good img')['src']
          expect(image_src).to include('box.png')
        end
      end
    end
  end
end
