class FoodTruck
  attr_reader :name, :inventory, :stock

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory[item] || 0
  end

  def stock(item, inventory_amount)
    current_amount = @inventory[item] || 0
    @inventory[item] = inventory_amount + current_amount
  end
end
