require './lib/item'

RSpec.describe Item do
  describe "item exists" do
    it 'exists' do
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

      expect(item1).to be_instance_of(Item)
    end

    it 'has attributes' do
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

      expect().to eq()
    end
  end
