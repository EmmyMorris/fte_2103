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
    end
  end
