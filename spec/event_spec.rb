require './lib/event'
require './lib/food_truck'
require './lib/item'


RSpec.describe Event do
  describe "event exists" do
    it 'exists' do
      event = Event.new("South Pearl Street Farmers Market")

      expect(event).to be_instance_of(Event)
    end

    it 'has attributes' do
      event = Event.new("South Pearl Street Farmers Market")

      expect(event.name).to eq("South Pearl Street Farmers Market")
      expect(event.food_trucks).to eq([])
    end
  end

  describe 'has food trucks' do
    it "has food trucks" do
      event = Event.new("South Pearl Street Farmers Market")
      food_truck1 = FoodTruck.new("Rocky Mountain Pies")

      event.add_food_truck(food_truck1)

      expect(event.food_trucks).to eq([food_truck1])
    end
  end
end
