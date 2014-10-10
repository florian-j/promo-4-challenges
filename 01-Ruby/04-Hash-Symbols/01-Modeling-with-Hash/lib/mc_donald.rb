
def poor_calories_counter(burger, side, beverage)
#TODO: return number of calories for this mcDonald order
   return BURGER_HASH[burger] + SIDE_HASH[side] + BEVERAGE_HASH[beverage]
end

BURGER_HASH = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130
  }

SIDE_HASH = {
    "French fries" => 130,
    "Potatoes" => 130,
  }

BEVERAGE_HASH = {
  "Coca" => 160,
  "Sprite" => 170
  }

MEALS_HASH = {
  "Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
  "Best of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca"),
  "Best of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
}

def calories_counter(*orders)
#TODO: return number of calories for a less constrained order
  cal = 0
  orders.each do |item|
    if BURGER_HASH.include?(item)
      cal = cal + BURGER_HASH[item]
    elsif SIDE_HASH.include?(item)
      cal = cal + SIDE_HASH[item]
    elsif BEVERAGE_HASH.include?(item)
      cal = cal + BEVERAGE_HASH[item]
    elsif MEALS_HASH.include?[item]
      cal = cal + MEALS_HASH.include?[item]
    end
  end
  return cal
end

p calories_counter("Cheese Burger", "French fries")

p poor_calories_counter("Cheese Burger", "French fries", "Sprite")

# calories = {
#   "Cheese Burger" => 290,
#   "Big Mac" => 300,
#   "Mc Bacon" => 400,
#   "Royal Cheese" => 130,
#   "French fries" => 130,
#   "Potatoes" => 130,
#   "Coca" => 160,
#   "Sprite" => 170
# }

# p poor_calories_counter("Cheese Burger", "Potatoes", "Coca")
