require 'rails_helper'

RSpec.describe Cat, type: :model do
  describe 'INSTANCE METHODS' do
    let(:cat) { Cat.new(name: 'Mr. Cat', image_name: 'mr-cat') }

    describe ':image' do
      it 'responds to :image' do
        expect(cat).to respond_to(:image)
      end
      it 'includes image_name' do
        expect(cat.image).to include('mr-cat')
      end
    end
  end
end
