require './lib/food_truck'
require './lib/item'


RSpec.describe FoodTruck do
  describe "food_truck exists" do
    it 'exists' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck).to be_instance_of(FoodTruck)
    end

    it 'has attributes' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck.name).to eq("Rocky Mountain Pies")
      expect(food_truck.inventory).to eq([])
    end
  end

  describe "#check_stock" do
    it "checks stock" do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

      expect(food_truck.check_stock(item1)).to eq(0)
    end
  end
end
